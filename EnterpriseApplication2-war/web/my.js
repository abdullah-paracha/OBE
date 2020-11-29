function drawPie(Present,Absent,id) {
if(Present<75)
clr='#EC1F06';
else
clr='#4BC669';  
 Highcharts.chart(id, {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: 'Attendence'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.percentage:.1f} %'
            }
        }
    },
    series: [{
        name: 'Attendance',
        
        data: [{
            name: 'Presents',
            y: Present,
            color: clr,
            sliced: true,
            selected: true
        }, {
            name: 'Absents',
           color: '#52484A',
            y: Absent
        }  
        ]
    }]
});
}