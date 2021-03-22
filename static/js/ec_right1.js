var ec_right1 = echarts.init(document.getElementById("r1"), "dark");
var ec_right1_option = {
	backgroundColor: "",
	title: {
		text: "全国区确诊TOP5",
		textStyle: {
			color: "white",
		},
		left: "left"
	},
	tooltip: {
		trigger: "axis",
		axisPointer: {
			type: "shadow"
		}
	},
	xAxis: {
		type: "category",
		data: []
	},
	yAxis: {
		type: "value"
	},
	series: [{
		data: [],
		type: "bar",
		barMaxWidth: "50%",
		itemStyle: {
			color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
				offset: 0,
				color: "#83bff6"
			},
			{
				offset: 0.5,
				color: "#188df0"
			},
			{
				offset: 1,
				color: "#188df0"
			}])
		},
	}]
};
ec_right1.setOption(ec_right1_option);