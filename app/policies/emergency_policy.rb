class EmergencyPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      adm = User.find_by(email: 'admin@test.com')
      scope.where(user: user).or(scope.where(user: adm))
    end
  end

  def show?
    true
  end

  def new?
    return create?
  end

  def create?
    true
  end

  def edit?
    return update?
  end

  def update?
    # record - the emrgency instance
    # user - current user
    # only the owner of the user , id the person who made the emergency same as the current user
    # return true if you own the emergency else return false
    return record.user == user
  end

  def destroy?
    return record.user == user
  end

end
