var femaleData = [
    211599,
    372370,
    335738,
    236015,
    120645,
    249369,
    175939,
    144207,
    179418,
    171885,
    166141,
    167692,
    94660,
    354764,
    116183,
    211599,
    372370,
    335738,
    236015,
    120645,
    249369,
    175939,
    144207,
    179418,
    171885,
    166141,
    167692,
    94660,
    354764,
    116183, 
    211599,
    372370,
    335738, 
    166141,
    167692,
    94660,
    354764,
    116183, 
    171885]
    var maleData = [
    386885,
    297623,
    216762,
    290335,
    336621,
    167931,
    219766,
    231137,
    176402,
    147930,
    138578,
    136478,
    174035,
    370618,
    126175,
    386885,
    297623,
    216762,
    290335,
    336621,
    167931,
    219766,
    231137,
    176402,
    147930,
    138578,
    136478,
    174035,
    370618,
    126175,
    386885,
    297623,
    216762,
    290335,
    336621,
    167931,
    219766,
    231137,
    176402,
    147930,
    138578,
    136478
    ]
    var labels = [" MAR 05", 
                                "MAR 06", 
                                "MAR 07", 
                                "MAR 08", 
                                "MAR 09", 
                                "MAR 10", 
                                "MAR 11", 
                                "MAR 12", 
                                "MAR 13", 
                                "MAR 14", 
                                "MAR 15", 
                                "MAR 16",
                                "MAR 17", 
                                "MAR 18", 
                                "MAR 19", 
                                "MAR 20", 
                                "MAR 21", 
                                "MAR 22", 
                                "MAR 23", 
                                "MAR 24", 
                                "MAR 25", "MAR 26", "MAR 27", "MAR 28", "MAR 29", 
                                "MAR 30", "MAR 31", "APR 01", "APR 02", "APR 03", 
                                "APR 04", "APR 05", "APR 06", "APR 07", "APR 08", 
                                "APR 09", "APR 10", "APR 11", "APR 11"];
    let maxData;
    var r = 245; 
    var g= 95;
    var b = 20;
    var mouseYPositions = [];
    
    function setup() {
      createCanvas(1450, 1000);
      angleMode(DEGREES);
       maxData = max(maleData);
      if (maxData < max(femaleData)) {
        maxData = max(femaleData);
      }
    }
    
    function draw() {
          r = map(mouseY,0, 1200,400,0);
            g = map(mouseY,0, 800,0,400);
        
    
      background(0);
      
      for (let i = 0; i < labels.length; i++) {
        let barH = map(femaleData[i]*2.2, 0, maxData, 0, 300);
            //female bar changing color//
          fill(r,g,b);
            stroke(r,g,b);
            strokeWeight(1);
        rect(30 * i + 150, 750 - barH, 10, barH);
    
        barH = map(maleData[i]*2.2, 0, maxData, 0, 300);
          fill(255);
            stroke(255);
            strokeWeight(1);
        rect(30 * i + 160, 750 - barH, 10, barH);
    
            fill(10, 10, 10, 200);
            rect(0, 400, 1440, 20);
        
            fill(255);	
            text('545 CALORIES BURNED', width/2.5,415);
    
       //horizontal line
          stroke(255, 5);
            line(0, mouseY, width, mouseY);
        
            
            //date labels
        push();
        translate(30 * i + 160, 310);
        rotate(-90);
        textSize(12);
            fill(255);
        text(labels[i], -500,0);
        pop();
        
        
        
        
       
        
    
      }
      
        //calories burned title
        fill(255);
        noStroke(); 
        textSize(30);
        text(' CALORIES BURNED IN A 1 HOUR OTF CLASS', width/3.8,900);
            textSize(15);
            text(' WHITE BAR = Calories burned by Male', width/3.5,930);
            text(' COLORED BAR = Calories burned by Female', width/2,930);
    
            stroke(255);
            strokeWeight(5);
            line(0, 300, 85, 300);
        
            line(0, 500, 85, 500);
            line(0, 700, 85, 700);
        
        
        
            noStroke(); 
        textSize(15);
        text('FAT BURN ZONE', 5,290);
            text('AEROBIC ZONE', 5,490);
            text('WARM UP ZONE', 5,690);
        
            
    
    
        
    }
    
    
    