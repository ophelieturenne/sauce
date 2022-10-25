class QuizzPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      # scope.all
      adm = User.find_by(email: 'admin@test.com')
      scope.where(user: user).or(scope.where(user: adm))
    end

    def show?
      true
    end
  end
end
