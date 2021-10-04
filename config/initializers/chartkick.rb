Chartkick.options = {
  donut: true, # ドーナツグラフ
  width: '300px',
  colors: [ "#eb8b74",
    "#f3bdb0",
    "#FABC96",
    "#FAD19E",
    "#FAE0A7",
    "#FAEFBE",
    "#F6E7BE",
    "#F7EAC6",
    "#F8EDCE",
    "#F9F0D6",
    "#FAF3DE",
    "#FBF6E6",
    "#FCF9EE",
    "#FDFCF6",
    "#FBFADF",
    "#FBFADF",
    "#FBFADF",
    "#FBFADF",
          ],
  message: {empty: "データがありません"},
  thousands: ",", 
  suffix: "日",
  legend: false, # 凡例非表示
  library: { # ここからHighchartsのオプション
    title: { # タイトル表示(ここでは、グラフの真ん中に配置して,viewでデータを渡しています。*後述)
      align: 'center',
      verticalAlign: 'middle',
    },
    chart: {
      backgroundColor: 'none',
      plotBorderWidth: 0, 
      plotShadow: false
      
    },
    plotOptions: {
      pie: {
        dataLabels: {
          enabled: true, 
          distance: -40, # ラベルの位置調節
          allowOverlap: false, # ラベルが重なったとき、非表示にする
          style: { #ラベルフォントの設定
            color: '#555', 
            fontWeight: 300,
            textAlign: 'center', 
            textOutline: 0, #デフォルトではラベルが白枠で囲まれていてダサいので消す
          }
        },
        size: '110%',
        innerSize: '60%', # ドーナツグラフの中の円の大きさ
        borderWidth: 0,
      }
    },
  }
}