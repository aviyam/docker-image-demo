from flask import Flask,render_template

app = Flask(__name__)


@app.route("/")
def home():
    return render_template('admin.html')
    
@app.route("/<username>")
def home_user(username):
    return render_template('home.html',username=username)


if __name__ == "__main__":
    for test in range(1,3):
        print(test)

    app.run(host='0.0.0.0', port = 5000)
