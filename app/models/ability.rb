class Ability
  include CanCan::Ability

    def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
      user ||= User.new # guest user (not logged in)
      if user.admin? 
        can :manage, :all
      elsif user.staff?
        can :create, User, role: 'contributor'
        can :manage, Program
      else
        can :manage, Program do |program|
          program.hosts.any? { |host| host.user == user }
        end
        # can :update, Program, :hosts => { :user_id => user.id } NEEDS MORE TESTING
        can :read, :all
      end  


# can :read, Article, Article.published do |article|
#   article.published_at <= Time.now
# end

    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
