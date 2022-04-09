from flask_restful import Resource

class Todo(Resource):
    def get(self):
        return "Yes, it's working", 200