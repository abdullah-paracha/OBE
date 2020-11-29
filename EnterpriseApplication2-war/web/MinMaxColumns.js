
/* global Highcharts */
var chart;
function DrawRe(id,Data,activity)
{
   
   chart = Highcharts.chart(id,{

    title: {
        text: activity
    },

    subtitle: {
        text: 'Plain'
    },

    xAxis: {
        categories: ['Max','Average','Min','Your Marks']
    },

    series: [{
         title: {
            text: 'Marks'
        },
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
