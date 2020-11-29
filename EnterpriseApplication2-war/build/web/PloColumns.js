/* global Highcharts */

function DrawPlos(id,data ){
    
var chart = Highcharts.chart(id, {

    title: {
        text: 'Plo Attainment'
    },

    xAxis: {
        categories: ['PLO 1', 'PLO 2', 'PLO 3', 'PLO 4', 'PLO 5','PLO 6','PLO 7','PLO 8','PLO 9','PLO 10','PLO 11', 'PLO 12']
    },

    series: [{
        type: 'column',
        colorByPoint: true,
        data:data,
        showInLegend: false
    }]

});


$('#plain').click(function () {
    chart.update({
        chart: {
            inverted: false,
            polar: false
        },
        subtitle: {
            text: 'Plain'
        }
    });
});

$('#inverted').click(function () {
    chart.update({
        chart: {
            inverted: true,
            polar: false
        },
        subtitle: {
            text: 'Inverted'
        }
    });
});

$('#polar').click(function () {
    chart.update({
        chart: {
            inverted: false,
            polar: true
        },
        subtitle: {
            text: 'Polar'
        }
    });
});

}