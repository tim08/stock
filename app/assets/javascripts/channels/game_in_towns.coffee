App.game_in_towns = App.cable.subscriptions.create "GameInTownsChannel",
  connected: ->
    # Called when the subscription is ready for use on the server
    console.log('ws connected')

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    console.log(data)
    # Called when there's incoming data on the websocket for this channel

