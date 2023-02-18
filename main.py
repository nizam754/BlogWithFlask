from flask import Flask, render_template, request
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime

app = Flask(__name__)
app.config["SQLALCHEMY_DATABASE_URI"] = 'mysql://root:@localhost/infotechtu'
db = SQLAlchemy(app)


class Contacts(db.Model):
    """
    sno, name,email, phone_num, msg, date
    """
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), unique=False, nullable=False)
    email = db.Column(db.String(20))
    phone_num = db.Column(db.String(12), unique=True, nullable=False)
    msg = db.Column(db.String(150), nullable=False)
    date = db.Column(db.String(12), nullable=True)


@app.route("/")
def home():
    return render_template('index.html')


@app.route("/about")
def about():
    return render_template('about.html')


@app.route("/contact", methods=['GET', 'POST'])
def contact():
    if request.method == 'POST':
        '''Add entry to the database'''
        name = request.form.get('name')
        email = request.form.get('email')
        phone = request.form.get('phone')
        message = request.form.get('message')
        entry = Contacts(name=name, phone_num=phone, msg=message, date= datetime.now(), email=email)
        db.session.add(entry)
        db.session.commit()
    return render_template('contact.html')


app.run(debug=True)
