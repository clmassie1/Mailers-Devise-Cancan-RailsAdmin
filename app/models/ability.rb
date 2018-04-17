class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new 

    can :access, :rails_admin
    can :dashboard
    can :manage, :all

    if user.superadmin_role?
      can :access, :rails_admin
      can :dashboard
      can :manage, :all
              
    end

    if user.supervisor_role?
      can :access, :rails_admin
      can :dashboard
      can :read, :all 
      can :manage, Claim
      can :manage, Car
      can :manage, Client
      can :manage, Rent
    end

    if user.user_role?
      can :access, :rails_admin
      can :dashboard
      can :read, :all 
    end

  end
end