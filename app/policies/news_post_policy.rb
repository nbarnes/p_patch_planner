class NewsPostPolicy < ApplicationPolicy
  Scope = Struct.new(:user, :scope) do
    def resolve
      scope
    end
  end

  def initialize(user, news_post)
    @user = user
    @news_post = news_post
  end

  def create?
    user.admin? if user.present?
  end

  def update?
    user.admin? if user.present?
  end

  def destroy?
    user.admin? if user.present?
  end

end
