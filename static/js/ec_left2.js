var ec_left2 = echarts.init(document.getElementById("l2"), "dark");
var ec_left2_Option = {
	backgroundColor: "",
	title: {
		text: "",
		textStyle: {
			color: "white",
		},
		left: "left"
	},
	tooltip: {
		trigger: "axis",
		axisPointer: {
			type: "line",
			lineStyle: {
				color: "#7171C6"
			}
		},
	},
	legend: {
		data: ["新增确诊", "新增疑似", "新增治愈", "新增死亡"],
		left: "right"
	},
	grid: {
		left: "4%",
		right: "6%",
		bottom: "4%",
		top: 50,
		containLabel: true
	},
	xAxis: [{
		type: "category",
		data: []
	}],
	yAxis: [{
		type: "value",
		axisLine: {
			show: true
		},
		axisLabel: {
			show: true,
			color: "white",
			fontSize: 12,
			formatter: function(value) {
				if (value >= 1000) {
					value = value / 1000 + "k"
				}
				return value
			}
		},
		splitLine: {
			show: true,
			lineStyle: {
				color: "#17273B",
				width: 1,
				type: "solid",
			}
		}
	}],
	series: [{
		name: "新增确诊",
		type: "line",
		smooth: true,
		areaStyle: {
			color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
				offset: 0,
				color: "rgba(255, 28, 119, 0.4)"
			},
			{
				offset: 1,
				color: "rgba(255, 28, 119, 0)"
			}])
		},
		itemStyle: {
			color: "#ff1c77"
		},
		data: []
	},
	{
		name: "新增疑似",
		type: "line",
		smooth: true,
		areaStyle: {
			color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
				offset: 0,
				color: "rgba(255, 141, 25, 0.4)"
			},
			{
				offset: 1,
				color: "rgba(255, 141, 25, 0.4)"
			}])
		},
		itemStyle: {
			color: "#ff8d19"
		},
		data: []
	},
	{
		name: "新增治愈",
		type: "line",
		smooth: true,
		areaStyle: {
			color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
				offset: 0,
				color: "rgba(56, 214, 216, 0.4)"
			},
			{
				offset: 1,
				color: "rgba(56, 214, 216, 0.4)"
			}])
		},
		itemStyle: {
			color: "#38d6d8"
		},
		data: []
	},
	{
		name: "新增死亡",
		type: "line",
		areaStyle: {
			color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
				offset: 0,
				color: "rgba(169, 185, 203, 0.4)"
			},
			{
				offset: 1,
				color: "rgba(169, 185, 203, 0.4)"
			}])
		},
		itemStyle: {
			color: "#a9b9cb"
		},
		smooth: true,
		data: []
	}]
};
ec_left2.setOption(ec_left2_Option);