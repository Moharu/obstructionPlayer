restify = require 'restify'
AI = require './app/ai'

server = restify.createServer()
server.use restify.CORS()
server.use restify.bodyParser(mapParams: false)

player = new AI

server.post '/obstruction', (req, res, next) ->
    board = req.body
    play = player.play board
    res.json play

server.listen 1236, ->
    console.log "Ready for action!"