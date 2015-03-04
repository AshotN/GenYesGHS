require('pmx').init();
express = require 'express'
config = require '../config'
app = require './express'
Couleurs = require('couleurs')(true);


app.get '/', (req, res) ->
	res.render 'index', currentPage: "Home"

app.get '/about', (req, res) ->
	res.render 'about', currentPage: "About"

app.get '/contact', (req, res) ->
	res.render 'contact', currentPage: "Contact"

app.get '/forteachers', (req, res) ->
	res.render 'forteachers', currentPage: "For Teachers"

app.get '/techteam', (req, res) ->
	res.render 'techteam', currentPage: "Tech Team"

app.get '/tutorials', (req, res) ->
	res.render 'tutorials', currentPage: "Tutorials"

app.get '*', (req, res) ->
	res.render '404'

process.on "uncaughtException", (err) ->
	if err.errno is "EADDRINUSE"
		console.log("Port in use already")
	else
		console.log err
	return process.exit 1

