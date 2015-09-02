expect = require 'expect.js'
AI = require '../app/ai'

describe 'My awesome AI', ->

    describe 'play method', ->

        instance = null

        beforeEach ->
            instance = new AI

        it 'should win me some games!', ->
            emptyBoard = [
                ['-','-','-','-','-','-']
                ['-','-','-','-','-','-']
                ['-','-','-','-','-','-']
                ['-','-','-','-','-','-']
                ['-','-','-','-','-','-']
                ['-','-','-','-','-','-']
            ]
            expect(instance.play emptyBoard).to.eql [0,0]
