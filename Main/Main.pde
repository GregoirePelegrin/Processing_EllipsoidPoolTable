ArrayList<Ball> balls;
int nbBalls;
int SPEED;
Table table;

void setup(){
    size(600, 600);
    frameRate(30);
    background(0);

    balls = new ArrayList<Ball>();
    nbBalls = 3000;
    SPEED = 5;
    table = new Table(250);

    for(int i=0; i<nbBalls; i++){
        balls.add(new Ball(new Point(width/2, height/2), i*TWO_PI/nbBalls));
    }
}

void draw(){
    background(0);

    table.display();
    
    for(Ball ball : balls){
        ball.update();
        ball.display();
    }
}

void circle(Point c, float r){
    ellipse(c.x, c.y, r*2, r*2);
}

void mousePressed() {
    if(mouseButton == LEFT){
        background(0);
    } else if(mouseButton == RIGHT){
        SPEED = -SPEED;
    }
}