from flask_restful import Resource

class getdata(Resource):
    def get(self,id):
        return "Yes, it's working", 200