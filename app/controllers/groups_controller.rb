class GroupsController < ApplicationController
  before_action :logged_in_user
  before_action :set_group, only: %i[show edit update destroy]

  def index
    @groups = Group.all
  end

  def show; end

  def new
    @group = Group.new
  end

  def edit; end

  def create
    @group = Group.new(group_params)
    @group.user_id = current_user.id
    @group.icon = params[:icon]

    if @group.save
      redirect_to groups_path, notice: 'Group was successfully created.'
    elsif @group.errors[:icon].present?
      redirect_to new_group_url, notice: @group.errors[:icon].first
    else
      redirect_to new_group_url, notice: @group.errors[:name].first
    end
  end

  def update
    @group.icon = params[:icon]
    if @group.update(group_params)
      redirect_to groups_path, notice: 'Group was successfully updated.'
    elsif @group.errors[:icon].present?
      redirect_to edit_group_url, notice: @group.errors[:icon].first
    else
      redirect_to edit_group_url, notice: @group.errors[:name].first
    end
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name, :icon, :user_id)
  end
end
