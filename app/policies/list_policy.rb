class ListPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    user.admin = true
  end

  def show?
    true
  end

  def edit?
    user.admin = true
    # if user == current_user
    #   true
    # else
    #   false
    # end
  end

  def update?
    user.admin = true
    # if user == current_user
    #   true
    # else
    #   false
    # end
  end
end
