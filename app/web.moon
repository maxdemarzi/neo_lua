http = require "lapis.nginx.http"
lapis = require "lapis"

import respond_to from require "lapis.application"

lapis.serve class extends lapis.Application
  "/": =>
    "Welcome to Lapis #{require "lapis.version"}!"

  "/node": respond_to {
    POST: =>
      http.simple {
        url: "http://localhost:7474/db/data/node"
        method: "POST"
        headers: {
          "content-type": "application/json; charset=UTF-8"
        }
        body: {
        }
        }
      "node created"
    }