class Ball{
    float angle;
    float posX;
    float posY;
    float radius;

    Ball(float x, float y, float a){
        this.angle = a;
        this.posX = x;
        this.posY = y;

        this.radius = 1;
    }

    void display(){
        // stroke(255, 2);
        // fill(255, 2);
        stroke(255);
        fill(255);
        circle(this.posX, this.posY, this.radius);
    }
    void update(){
        if(!table.collide(this)){
            this.posX += SPEED * cos(this.angle);
            this.posY += SPEED * sin(this.angle);
        }
    }
}