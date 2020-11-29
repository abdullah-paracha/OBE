/* global Highcharts */

var chart;
function DrawResults(id,Data)
{
  chart = Highcharts.chart(id,{

    title: {
        text: 'Subject Grading'
    },

    subtitle: {
        text: 'Plain'
    },

    xAxis: {
        categories: ['A', 'B+', 'B', 'C+', 'C','D', 'F']
    },

    series: [{
        type: 'column',
        colorByPoint: true,
        data: Data,
        showInLegend: false
    }]

});
}

 function PlainUpdate() {
     
    chart.update({
        chart: {
            inverted: false,
            polar: false
        },
        subtitle: {
            text: 'Plain'
        }
    });
}

function PolarUpdate(){
    chart.update({
        chart: {
            polar: true,
            inverted: false
            
        },
        subtitle: {
            text: 'Polar'
        }
    });
}

function InvertedUpdate() {
    chart.update({
        chart: {
            inverted: true,
            polar: false
        },
        subtitle: {
            text: 'Inverted'
        }
    });
    }


