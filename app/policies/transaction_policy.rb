class TransactionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def index?
    return true
  end

  def mytransactions?
    return true
  end

  def new?
    return true
  end

  def create?
    return true
  end

  def accept?
    record.plant.user == user
  end
end
