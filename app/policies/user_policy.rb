class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def profile?
    record == user
  end

  def go_to_profile?
    return true
  end
end
