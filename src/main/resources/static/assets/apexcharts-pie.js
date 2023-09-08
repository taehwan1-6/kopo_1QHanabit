var colors = ["#727cf5", "#6c757d", "#0acf97", "#fa5c7c", "#e3eaef", 
            "#ffad46", "#008fb5", "#f45b69", "#8d6cab", "#2e383f"],
    dataColors = $("#simple-pie").data("colors");
dataColors && (colors = dataColors.split(","));
var options = {
        chart: {
            height: 300,
            type: "pie"
        },
        series: [44, 55, 41, 17, 15, 10, 25, 35, 50, 5],
        labels: ["편의점/마트" , "카페/디저트", "주거/통신", "의료/건강", "여행/숙박", 
                "식비", "쇼핑/뷰티", "문화생활", "교통/자동차", "기타"],
        colors: colors,
        legend: {
            show: !0,
            position: "right",
            horizontalAlign: "center",
            verticalAlign: "middle",
            floating: !1,
            fontSize: "15px",
            offsetX: 0,
            offsetY: 7
        },
        responsive: [{
            breakpoint: 600,
            options: {
                chart: {
                    height: 240
                },
                legend: {
                    show: !1
                }
            }
        }]
    },
    chart = new ApexCharts(document.querySelector("#simple-pie"), options);
chart.render();