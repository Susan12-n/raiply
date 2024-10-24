from flask import *
import pymysql
# from functions import *
from mpesa import *

app = Flask(__name__)
# session key
app.secret_key = "!@#$%^"
app.config['SECRET_KEY'] = 'your_secret_key_here'

# Define the route for the homepage
@app.route("/")
def Homepage():
    connection = pymysql.connect(host='localhost', user='root', password='', database='rai')
    
    # SQL queries for different product categories
    sql = "select * from products WHERE product_category ='tables'"
    sql1 = "select * from products WHERE product_category = 'chairs'"
    sql2 = "select * from products WHERE product_category ='beds'"
    sql3 = "select * from products WHERE product_category ='drawers'"
    
    # Create cursors to execute queries
    cursor = connection.cursor()
    cursor1 = connection.cursor()
    cursor2 = connection.cursor()
    cursor3 = connection.cursor()

    # Execute queries
    cursor.execute(sql)
    cursor1.execute(sql1)
    cursor2.execute(sql2)
    cursor3.execute(sql3)

    # Fetch results
    tables = cursor.fetchall()
    chairs = cursor1.fetchall()
    beds = cursor2.fetchall()
    drawers = cursor3.fetchall()

    return render_template("index.html", tables=tables, chairs=chairs, beds=beds, drawers=drawers)

@app.route("/furnitures")
def Furnitures():
    connection=pymysql.connect(host='localhost',user='root',password='',database='rai')
    sql="select * from products WHERE product_category = 'dinnings' "
    sql1="select * from products WHERE product_category = 'desks' "
    sql2="select * from products WHERE product_category ='benches' "
    sql3="select * from products WHERE product_category ='ranks' "
    sql4="select * from products WHERE product_category ='doors' "
    
 
 
#  you need to have a cursor 
#  cursor-used to run /execute above sql 
    cursor=connection.cursor()
    cursor1=connection.cursor()
    cursor2=connection.cursor()
    cursor3=connection.cursor()
    cursor4=connection.cursor()



#  execute 
    cursor.execute(sql)
    cursor1.execute(sql1)
    cursor2.execute(sql2)
    cursor3.execute(sql3)
    cursor4.execute(sql4)


# fetch all items 
    dinnings=cursor.fetchall()
    desks=cursor1.fetchall()
    benches=cursor2.fetchall()
    ranks=cursor3.fetchall()
    doors=cursor4.fetchall()
    

    return render_template("furnitures.html",dinnings=dinnings,desks=desks,benches=benches,ranks=ranks,doors=doors )
# route for single products 
@app.route("/single/<product_id>")
def singleitem(product_id):
    # connection to db 
     connection=pymysql.connect(host='localhost',user='root',password='',database='rai')
# create sql query 
     sql= " select * from products where product_id = %s "
    #  create a cursor 
     cursor =connection.cursor()
     cursor.execute(sql,product_id)
    #  get the single product 
     product=cursor.fetchone() 
     return render_template ("single.html",product=product)



# Route for uploading products (admin-only)
@app.route("/upload", methods=['POST', 'GET'])
def Upload():
    if 'admin' not in session or session['admin'] != 'admin':
        return redirect("/login")  # Redirect to login if not admin

    if request.method == 'POST':
        # User can add products
        product_name = request.form['product_name']
        product_desc = request.form['product_desc']
        product_cost = request.form['product_cost']
        product_category = request.form['product_category']
        product_image_name = request.files['product_image_name']
        product_image_name.save('static/images/' + product_image_name.filename)

        # Connection to db
        connection = pymysql.connect(host='localhost', user='root', password='', database='rai')
        cursor = connection.cursor()

        sql = "insert into products (product_name, product_desc, product_cost, product_category, product_image_name) values(%s,%s,%s,%s,%s)"
        data = (product_name, product_desc, product_cost, product_category, product_image_name.filename)

        # Execute
        cursor.execute(sql, data)
        connection.commit()

        return render_template("upload.html", message="Product added successfully")
    else:
        return render_template("upload.html")


@app.route("/uploadfurnitures", methods=['POST', 'GET'])
def Uploadfurnitures():
    if 'admin' not in session or session['admin'] != 'admin':
        return redirect("/login")  # Redirect to login if not admin

    if request.method == 'POST':
        product_name = request.form['product_name']
        product_desc = request.form['product_desc']
        product_cost = request.form['product_cost']
        product_category = request.form['product_category']
        product_image_name = request.files['product_image_name']
        product_image_name.save('static/images/' + product_image_name.filename)

        # Connection to db
        connection = pymysql.connect(host='localhost', user='root', password='', database='rai')
        cursor = connection.cursor()

        sql = "insert into products (product_name, product_desc, product_cost, product_category, product_image_name) values(%s,%s,%s,%s,%s)"
        data = (product_name, product_desc, product_cost, product_category, product_image_name.filename)

        cursor.execute(sql, data)
        connection.commit()

        return render_template("uploadfurnitures.html", message="Furniture added successfully")
    else:
        return render_template("uploadfurnitures.html")

# Route for login
@app.route("/login", methods=['POST', 'GET'])
def Login():
    if request.method == 'POST':
        email = request.form['email']
        password = request.form['password']

        connection = pymysql.connect(host='localhost', user='root', password='', database='rai')
        cursor = connection.cursor()
        
        # Fetch user and role
        sql = "select * from users where email = %s and password = %s"
        data = (email, password)
        cursor.execute(sql, data)

        user = cursor.fetchone()
        if user:
            role = user[6]  # Assuming the 7th column is role
            session['key'] = email
            session['admin'] = role  # Store role in session

            return redirect("/")
        else:
            return render_template("login.html", error="Invalid login credentials")

    return render_template("login.html")

    # mpesa  
    # implement STK PUSH 

@app.route('/register', methods=['GET', 'POST'])
def register():
    if request.method == 'POST':
        username = request.form['username']
        email = request.form['email']
        gender = request.form['gender']
        phone = request.form['phone']
        password = request.form['password']
    
       
       # connection to db 

        connection=pymysql.connect(host='localhost',user='root',password='',database='rai')
        cursor=connection.cursor()

        sql= "insert into users ( username,email,gender,phone,password )values(%s,%s,%s,%s,%s)"
        data = (username,email,gender,phone ,password)


        # execute
        cursor.execute(sql,data)
        # save the changes 
        connection.commit()

        return render_template("register.html", message = " successful registration ")

    else:
     return render_template("register.html", error = "please enter correct details ")

@app.route('/mpesa', methods= ['POST'])
def mpesa():
   phone=request.form["phone"]
   amount=request.form["amount"]
   #use mpesa_payment function from mpesa.py 
   #it accepts the phone and amount as arguments
   mpesa_payment("1",phone) 



   return'<h1>Please complete payment in your form</h1>'\
   '<a href="/" class="btn btn-dark btn-sm">GO back to products </a>'
@app.route("/logout")
def Logout():
    session.clear()
    return redirect("/login")
if __name__=="__main__":
    app.run(debug= True,port=5000)
