import utils
from flask import Flask
from flask import request
from flask import render_template
from flask import jsonify
from jieba.analyse import  extract_tags
import string


app = Flask(__name__)



@app.route('/')
def hello_world():
    return render_template("main.html")


@app.route("/time")
def get_time():
    return utils.get_time()

@app.route("/c1")
def get_c1_data():
    data = utils.get_c1_data()
    return jsonify({"confirm":data[0],"suspect":data[1],"heal":data[2],"dead":data[3]})

@app.route("/c2")
def get_c2_data():
    res = []
    alldata = utils.get_c2_data()
    let = len(alldata)
    for index in range(let):
        allkey = alldata[index][0]
        allvalue = alldata[index][1]
        res.append({"name":allkey,"value":allvalue})
    return jsonify({"data":res})

@app.route("/l1")
def get_l1_data():
    alldata = utils.get_l1_data()
    day,confirm,suspect,heal,dead = [],[],[],[],[]
    for a,b,c,d,e in alldata:
        day.append(a.strftime("%Y-%m-%d")) #a是datatime类型
        confirm.append(b)
        suspect.append(c)
        heal.append(d)
        dead.append(e)
    return jsonify({"day":day,"confirm": confirm, "suspect": suspect, "heal": heal, "dead": dead})

@app.route("/l2")
def get_l2_data():
    data = utils.get_l2_data()
    day, confirm_add, suspect_add,heal_add,dead_add = [],[],[],[],[]
    for a,b,c,d,e in data:
        day.append(a.strftime("%Y-%m-%d"))  # a是datatime类型
        confirm_add.append(b)
        suspect_add.append(c)
        heal_add.append(d)
        dead_add.append(e)
    return jsonify({"day": day, "confirm_add": confirm_add, "suspect_add": suspect_add,"heal_add": heal_add,"dead_add": dead_add})


@app.route("/r1")
def get_r1_data():
    ak = []
    av = [] 
    alldata = utils.get_r1_data()
    let = len(alldata)
    for index in range(let):
        ak.append(alldata[index][0])
        av.append(alldata[index][1])
    return jsonify({"city":ak,"confirm":av})
   
@app.route("/r2")
def get_r2_data():
	alldata = []
	kwddata = utils.get_r2_data()
	for index in range(len(kwddata)):
	    k= kwddata[index][0]
	    v= kwddata[index][1]
	    alldata.append({"name":k,"value":v})
	return jsonify({"kws":alldata})
   

if __name__ == '__main__':
    app.run()