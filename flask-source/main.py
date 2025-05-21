from os import getenv
from flask import Flask

server = Flask(__name__)

env = getenv('FLASK_ENV')

@server.route('/')
def index():
    return f"current env: {env}"

@server.route('/test')
def test():
    return "Test message"

if __name__ == '__main__':
    port = int(getenv('PORT') or '8080')
    server.run(host='0.0.0.0', port=port)