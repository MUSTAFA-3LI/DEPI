from flask import Flask, render_template
from flask import Flask, request
from prometheus_flask_exporter import PrometheusMetrics

app = Flask(__name__, static_url_path='/static')
metrics = PrometheusMetrics(app)


@app.route('/')
def index():
    return render_template('index.html')


if __name__ == '__main__':
    app.run('0.0.0.0', 8000)
