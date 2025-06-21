from flask import Flask, render_template
import json
import os

CONFIG_FILE = "/data/options.json"

app = Flask(__name__)

def load_config():
    try:
        with open(CONFIG_FILE, "r") as f:
            return json.load(f)
    except Exception as e:
        return {"error": str(e)}

@app.route('/')
def index():
    config = load_config()
    return render_template("index.html", config=config)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
