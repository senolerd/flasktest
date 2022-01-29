from flask import Flask

app = Flask(__name__)
app.static_url_path=""
app.static_folder="./static"


@app.route("/")
def index():
    return app.send_static_file('index.html')
