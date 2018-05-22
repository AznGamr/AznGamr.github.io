# simple-page

link to live site https://azngamr.github.io/

Whatever I type will appear on the public webssss

<div id="anychart-embed-seat-maps-chamber-theater" class="anychart-embed anychart-embed-seat-maps-chamber-theater">
<script src="https://cdn.anychart.com/releases/8.2.1/js/anychart-base.min.js"></script>
<script src="https://cdn.anychart.com/releases/8.2.1/js/anychart-ui.min.js"></script>
<script src="https://cdn.anychart.com/releases/8.2.1/js/anychart-exports.min.js"></script>
<script src="https://cdn.anychart.com/releases/8.2.1/js/anychart-map.min.js"></script>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<div id="ac_style_seat-maps-chamber-theater" style="display:none;">
html, body, #container {
    width: 100%;
    height: 100%;
    margin: 0;
    padding: 0;
}
</div>
<script>(function(){
function ac_add_to_head(el){
	var head = document.getElementsByTagName('head')[0];
	head.insertBefore(el,head.firstChild);
}
function ac_add_link(url){
	var el = document.createElement('link');
	el.rel='stylesheet';el.type='text/css';el.media='all';el.href=url;
	ac_add_to_head(el);
}
function ac_add_style(css){
	var ac_style = document.createElement('style');
	if (ac_style.styleSheet) ac_style.styleSheet.cssText = css;
	else ac_style.appendChild(document.createTextNode(css));
	ac_add_to_head(ac_style);
}
ac_add_link('https://cdn.anychart.com/playground-css/seat-map/seat-map-title.css');
ac_add_link('https://cdn.anychart.com/releases/8.2.1/css/anychart-ui.min.css');
ac_add_link('https://cdn.anychart.com/releases/8.2.1/fonts/css/anychart-font.min.css');
ac_add_style(document.getElementById("ac_style_seat-maps-chamber-theater").innerHTML);
ac_add_style(".anychart-embed-seat-maps-chamber-theater{width:600px;height:450px;}");
})();</script>
<div id="container"></div>
<script>
anychart.onDocumentReady(function () {
    var stage = acgraph.create('container');

    $('#container').append('<div class="seat-map-title">' +
            '<h1>Reservation of seats in Chamber theatre.</h1>' +
            '<p>Source <a href="https://cdn.anychart.com/svg-data/' +
            'seat-map/theater.svg"' +
            'target="_blank">SVG Image</a></p>' + '</div>');

    // get svg file
    $.ajax({
        type: 'GET',
        url: 'https://cdn.anychart.com/svg-data/seat-map/theater.svg',
        // The data that have been used for this sample can be taken from the CDN
        // load SVG image using jQuery ajax
        success: function (svgData) {
            // Data for creating a SeatMap
            var chart = anychart.seatMap([
                {id: '1', value: 'Row - 1'},
                {id: '2', value: 'Row - 1'},
                {id: '3', value: 'Row - 1'},
                {id: '4', value: 'Row - 2'},
                {id: '5', value: 'Row - 2'},
                {id: '6', value: 'Row - 2'},
                {id: '7', value: 'Row - 3'},
                {id: '8', value: 'Row - 3'},
                {id: '9', value: 'Row - 3'},
                {id: '10', value: 'Row - 4'},
                {id: '11', value: 'Row - 4'},
                {id: '12', value: 'Row - 4'}
            ]);

            // set svg data
            chart.geoData(svgData);
            chart.padding([70, 20, 50, 20]);

            // create chart legend
            chart.legend()
                    .enabled(true)
                    // items source mode categories
                    .itemsSourceMode('categories')
                    .position('right')
                    .itemsLayout('vertical');

            var series = chart.getSeries(0);

            // Set color scale.
            series.colorScale(anychart.scales.ordinalColor([
                {'equal': 'Row - 4', 'color': '#109BC7'},
                {'equal': 'Row - 3', 'color': '#109BC7'},
                {'equal': 'Row - 2', 'color': '#109BC7'},
                {'equal': 'Row - 1', 'color': '#d38d5f'}
            ]));

            // sets fill series
            series.fill(function () {
                var attrs = this.attributes;
                if (attrs) {
                    // attr in svg.file
                    var class_ = attrs.class;
                    switch (class_) {
                        case 'rect' :
                            return attrs.fill;
                        default:
                            return '#fff';
                    }
                } else {
                    return this.sourceColor;
                }
            });

            // sets stroke series
            series.stroke(function () {
                var attrs = this.attributes;
                if (attrs) {
                    // attr in svg.file
                    var class_ = attrs.class;
                    switch (class_) {
                        case 'rect' :
                            return attrs.stroke;
                        default:
                            return '#467fac';
                    }
                } else {
                    return this.sourceColor;
                }
            });

            series.tooltip().title().useHtml(true);
            // set tooltip settings
            series.tooltip()
                    .useHtml(true)
                    .titleFormat(function () {
                        var col = this.id;
                        const VIP = 3;

                        if (col <= VIP) {
                            return '<strong style="color: gold;">VIP Place:</strong>';
                        } else {
                            return '<strong>Place:</strong>';
                        }
                    })
                    .format(function () {
                        var row = this.value;
                        // col data from svg-file attribute
                        var col = this.regionProperties.col;

                        return row + '<br>' + 'Col - ' + col;
                    });

            // sets fill on hover series
            series.hovered().fill(function () {
                var attrs = this.attributes;
                if (attrs) {
                    // attr in svg.file
                    var class_ = attrs.class;
                    switch (class_) {
                        case 'chair-color-1':
                            return anychart.color.darken('#109BC7', 0.25);
                        case 'chair-color-2' :
                            return '#109BC7';
                        case 'chair-color-3' :
                            return anychart.color.darken('#109BC7', 0.75);
                        case 'chair-color-4' :
                            return '#09546C';
                        case 'chair-vip-color-1' :
                            return anychart.color.darken('#d38d5f', 0.25);
                        case 'chair-vip-color-2' :
                            return '#d38d5f';
                        case 'chair-vip-color-3' :
                            return anychart.color.darken('#6b3c1e', 0.75);
                        case 'chair-vip-color-4' :
                            return anychart.color.darken('#6b3c1e', 0.1);
                        case 'rect' :
                            return attrs.fill;
                        default:
                            return this.sourceColor;
                            // It returns the original color for
                            // those elements that are not fill over
                    }
                }
            });

            // sets stroke on hover series
            series.hovered().stroke(function () {
                var attrs = this.attributes;
                if (attrs) {
                    // attr in svg.file
                    var class_ = attrs.class;
                    switch (class_) {
                        case 'rect' :
                            return attrs.stroke;
                        default:
                            return '#000 0.3';
                            // It returns the original color for
                            // those elements that are not fill over
                    }
                }
            });

            // sets fill on select series
            series.selected().fill(function () {
                var attrs = this.attributes;
                if (attrs) {
                    // attr in svg.file
                    var class_ = attrs.class;
                    switch (class_) {
                        case 'rect' :
                            return attrs.fill;
                        default:
                            return '#455a64';
                            // It returns the original color for
                            // those elements that are not fill over
                    }
                }
            });

            // sets fill on select series
            series.selected().stroke(function () {
                var attrs = this.attributes;
                if (attrs) {
                    // attr in svg.file
                    var class_ = attrs.class;
                    switch (class_) {
                        case 'rect' :
                            return attrs.stroke;
                        default:
                            return '#000';
                            // It returns the original color for
                            // those elements that are not fill over
                    }
                }
            });

            // label info
            var labelInfo = chart.label();
            labelInfo.useHtml(true)
                    .padding(10)
                    .hAlign('left')
                    .position('left-top')
                    .anchor('left-top')
                    .offsetY(75)
                    .offsetX(20)
                    .width(265)
                    .text('<span style="color: #545f69; font-size: 14px;">' +
                            '<b>Please select a location.</b><br><br>You can do this by ' +
                            'clicking on the<br>desired location , so you can select' +
                            '<br>multiple locations with the aid<br>of a combination ' +
                            'of keys:<br><b><i>shift/ctrl' +
                            ' + target place</i></b>.</span>');
            labelInfo.background({
                fill: '#FCFCFC',
                stroke: '#E1E1E1',
                corners: 3,
                cornerType: 'ROUND'
            });

            // set container id for the chart
            chart.container(stage);
            // initiate chart drawing
            chart.draw();
        }
    });
});
</script>
</div>

<link href="/mapsvg/index.htmlcss/mapsvg.css" rel="stylesheet">
<script src="/mapsvg/index.htmljs/jquery.js"></script>
<script src="/mapsvg/index.htmljs/jquery.mousewheel.min.js"></script>
<script src="/mapsvg/index.htmljs/mapsvg.min.js"></script>

<div id="mapsvg"></div>

<script type="text/javascript">
jQuery(document).ready(function(){
jQuery("#mapsvg").mapSvg({width: 960,height: 540,regions: {'rect2122': {id: "rect2122",'id_no_spaces': "rect2122",disabled: true,data: {}},'path36': {id: "path36",'id_no_spaces': "path36",disabled: true,data: {}},'rect1652': {id: "rect1652",'id_no_spaces': "rect1652",tooltip: "Test",popover: "Testing",data: {}}},viewBox: [0,0,960,540],gauge: {on: false,labels: {low: "low",high: "high"},colors: {lowRGB: {r: 85,g: 0,b: 0,a: 1},highRGB: {r: 238,g: 0,b: 0,a: 1},low: "#550000",high: "#ee0000",diffRGB: {r: 153,g: 0,b: 0,a: 0}},min: 0,max: false},source: "/Objecty Map updated.svg",title: "Objecty Map updated",responsive: true});
});
</script>
