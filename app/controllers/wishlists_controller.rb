class WishlistsController < ApplicationController
  before_action :logged_in_user
  before_action :set_wishlist, only: %i[show edit update destroy checkout]
  before_action :set_group, only: %i[group_wishlists]
  include WishlistsHelper

  def index
    @wishlists = current_user.wishlists_order_recent
  end

  def list_order_ancient
    @wishlists = current_user.wishlists_order_ancient
  end

  def list_external
    @wishlists = current_user.list_wishlists_join_groups
    @total = total_amount_on_external(@wishlists)
  end

  def group_wishlists
    @wishlists = @group.wishlists.where(active: true)
    @total = total_amount_on_external(@wishlists)
  end

  def show
    @wishlist
  end

  def checkout
    @payment = Payment.new
  end

  def new
    @groups_added = []
    @wishlist = Wishlist.new
    @group = Group.all
  end

  def edit
    @group = Group.includes(:wishlists).all
  end

  def create
    @wishlist = Wishlist.new(wishlist_params)
    @wishlist.author_id = current_user.id
    @wishlist.active = true
    @groups_ids = params[:wishlist][:group_ids]

    if @wishlist.save
      @groups_ids&.each do |g|
        @wishlist.groups << Group.find(g)
      end
      redirect_to wishlists_path, notice: 'Wishlist was successfully created.'
    elsif @wishlist.errors[:price].present?
      redirect_to new_wishlist_url, notice: @wishlist.errors[:price].first
    else
      redirect_to new_wishlist_url, notice: @wishlist.errors[:name].first
    end
  end

  def update
    @groups_ids = params[:wishlist][:group_ids]

    if @wishlist.update(wishlist_params)
      if !@groups_ids.nil?
        @groups_ids.each do |g|
          @wishlist.groups << Group.find(g)
        end
      else
        WishlistsGroup.where(wishlist_id: params[:id]).destroy_all
      end
      redirect_to wishlists_path, notice: 'Wishlist was successfully udpated.'
    else
      redirect_to new_wishlist_url, notice: @user.errors[:username].first
    end
  end
end
