class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    can :read, Recipe, public: true
    can :read, Recipefood
    can :read, Food
    return unless user.present?

    can :manage, Recipefood
    can :manage, Recipe, user: user
    can :manage, Food, user:
  end
end
