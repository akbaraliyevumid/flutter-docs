    final List<ChartData> financialData = <ChartData>[
      ChartData(DateTime(2016, 01, 11), 98.97, 101.19, 95.36, 97.13),
      ChartData(DateTime(2016, 01, 18), 98.41, 101.46, 93.42, 101.42),
      ChartData(DateTime(2016, 01, 25), 101.52, 101.53, 92.39, 97.34),
      ChartData(DateTime(2016, 02, 01), 96.47, 97.33, 93.69, 94.02),
      ChartData(DateTime(2016, 02, 08), 93.13, 96.35, 92.59, 93.99),
      ChartData(DateTime(2016, 02, 15), 91.02, 94.89, 90.61, 92.04),
      ChartData(DateTime(2016, 02, 22), 98.0237, 98.0237, 98.0237, 98.0237),
      ChartData(DateTime(2016, 02, 29), 99.86, 106.75, 99.65, 106.01),
      ChartData(DateTime(2016, 03, 07), 102.39, 102.83, 100.15, 102.26),
      ChartData(DateTime(2016, 03, 14), 101.91, 106.5, 101.78, 105.92),
      ChartData(DateTime(2016, 03, 21), 105.93, 107.65, 104.89, 105.67),
      ChartData(DateTime(2016, 03, 28), 106, 110.42, 104.88, 109.99),
      ChartData(DateTime(2016, 04, 04), 110.42, 112.19, 108.121, 108.66),
      ChartData(DateTime(2016, 04, 11), 108.97, 112.39, 108.66, 109.85),
      ChartData(DateTime(2016, 04, 18), 108.89, 108.95, 104.62, 105.68),
      ChartData(DateTime(2016, 04, 25), 105, 105.65, 92.51, 93.74),
      ChartData(DateTime(2016, 05, 02), 93.965, 95.9, 91.85, 92.72),
      ChartData(DateTime(2016, 05, 09), 93, 93.77, 89.47, 90.52),
      ChartData(DateTime(2016, 05, 16), 92.39, 95.43, 91.65, 95.22),
      ChartData(DateTime(2016, 05, 23), 95.87, 100.73, 95.67, 100.35),
      ChartData(DateTime(2016, 05, 30), 99.6, 100.4, 96.63, 97.92),
      ChartData(DateTime(2016, 06, 06), 97.99, 101.89, 97.55, 98.83),
      ChartData(DateTime(2016, 06, 13), 98.69, 99.12, 95.3, 95.33),
      ChartData(DateTime(2016, 06, 20), 96, 96.89, 92.65, 93.4),
      ChartData(DateTime(2016, 06, 27), 93, 96.465, 91.5, 95.89),
      ChartData(DateTime(2016, 07, 04), 95.39, 96.89, 94.37, 96.68),
      ChartData(DateTime(2016, 07, 11), 96.75, 99.3, 96.73, 98.78),
      ChartData(DateTime(2016, 07, 18), 98.7, 101, 98.31, 98.66),
      ChartData(DateTime(2016, 07, 25), 98.25, 104.55, 96.42, 104.21),
      ChartData(DateTime(2016, 08, 01), 104.41, 107.65, 104, 107.48),
      ChartData(DateTime(2016, 08, 08), 107.52, 108.94, 107.16, 108.18),
      ChartData(DateTime(2016, 08, 15), 108.14, 110.23, 108.08, 109.36),
      ChartData(DateTime(2016, 08, 22), 108.86, 109.32, 106.31, 106.94),
      ChartData(DateTime(2016, 08, 29), 106.62, 108, 105.5, 107.73),
      ChartData(DateTime(2016, 09, 05), 107.9, 108.76, 103.13, 103.13),
      ChartData(DateTime(2016, 09, 12), 102.65, 116.13, 102.53, 114.92),
      ChartData(DateTime(2016, 09, 19), 115.19, 116.18, 111.55, 112.71),
      ChartData(DateTime(2016, 09, 26), 111.64, 114.64, 111.55, 113.05),
      ChartData(DateTime(2016, 10, 03), 112.71, 114.56, 112.28, 114.06),
      ChartData(DateTime(2016, 10, 10), 115.02, 118.69, 114.72, 117.63),
      ChartData(DateTime(2016, 10, 17), 117.33, 118.21, 113.8, 116.6),
      ChartData(DateTime(2016, 10, 24), 117.1, 118.36, 113.31, 113.72),
      ChartData(DateTime(2016, 10, 31), 113.65, 114.23, 108.11, 108.84),
      ChartData(DateTime(2016, 11, 07), 110.08, 111.72, 105.83, 108.43),
      ChartData(DateTime(2016, 11, 14), 107.71, 110.54, 104.08, 110.06),
      ChartData(DateTime(2016, 11, 21), 115.42, 115.42, 115.42, 115.42),
      ChartData(DateTime(2016, 11, 28), 111.43, 112.465, 108.85, 109.9),
      ChartData(DateTime(2016, 12, 05), 110, 114.7, 108.25, 113.95),
      ChartData(DateTime(2016, 12, 12), 113.29, 116.73, 112.49, 115.97),
      ChartData(DateTime(2016, 12, 19), 115.8, 117.5, 115.59, 116.52),
      ChartData(DateTime(2016, 12, 26), 116.52, 118.0166, 115.43, 115.82),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Center(
                child: Container(
                    child: SfCartesianChart(
                        primaryXAxis: DateTimeAxis(),
                        series: <ChartSeries>[
                            // Renders CandleSeries
                            CandleSeries<ChartData, DateTime>(
                                dataSource: financialData,
                                xValueMapper: (ChartData data, _) => data.x,
                                lowValueMapper: (ChartData data, _) => data.low,
                                highValueMapper: (ChartData data, _) => data.high, 
                                openValueMapper: (ChartData data, _) => data.open,
                          closeValueMapper: (ChartData data, _) => data.close,

                            )
                        ]
                    )
                )   
            )
        );
    }

class ChartData {
  ChartData(this.x, this.open, this.high, this.low, this.close, [this.color]);
  final DateTime x;
  final double? open;
  final double? high;
  final double? low;
  final double? close;
  final int? color;
}

