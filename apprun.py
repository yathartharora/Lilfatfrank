from flask import Flask
from flask_restful import Api

from apicall import Todo

app = Flask(__name__)
api = Api(app)

# api.add_resource(Todo, "/todo/<int:id>")
api.add_resource(Todo, "/data")

if __name__ == "__main__":
  app.run()