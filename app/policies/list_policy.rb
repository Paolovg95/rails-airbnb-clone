class ListPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def edit?
    if user == current_user
      true
    else
      false
    end
  end

  def update?
    if user == current_user
      true
    else
      false
    end
  end

end
