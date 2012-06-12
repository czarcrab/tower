Tower.Net.Connection.Socketio =
  getId: (socket) ->
    socket.id

  getSessionId: (socket) ->

  listen: (server) ->
    # if client
    # socket = global.io.connect(domain)
    io = Tower.modules.socketio.listen(server)

    io.on 'connection', (socket) =>
      @connect(socket)

    io

  connect: (socket) ->
    @_super(socket)

  disconnect: (socket) ->
    @_super(socket)

  registerHandler: (socket, eventType, handler) ->
    socket.on eventType, (data) =>
      handler.call(@, data, @)

  emit: (socket, data, key = 'sync') ->
    console.log('emitting')
    console.log(key)
    console.log(data)
    socket.emit(key, data)

  broadcast: (socket, data) ->
    socket.broadcast(data)

module.exports = Tower.Net.Connection.Socketio