Template.home.onCreated ->
    @autorun => Meteor.subscribe 'recent_listings'
    
Template.home.helpers
    recent_listings: ->
        Docs.find 
            model:'listing'
            
            