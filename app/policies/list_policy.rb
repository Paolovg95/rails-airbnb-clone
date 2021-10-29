class ListPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create
    true
  end

  # def edit
  #   true
  # end

  def update?
    #  if I am the owner of the list OR if I am the admin
    record.user == user || user.admin
  end
end
