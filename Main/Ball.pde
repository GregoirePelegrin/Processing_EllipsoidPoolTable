class Ball{
    float angle;
    float radius;
    Point center;

    Ball(Point _c, float a){
        this.angle = a;
        this.center = _c;

        this.radius = 1;
    }

    void display(){
        // fill(255, 2);
        noStroke();
        fill(255, 10);
        circle(this.center, this.radius);
    }
    void update(){
        if(!table.collide(this)){
            this.center.x += SPEED * cos(this.angle);
            this.center.y += SPEED * sin(this.angle);
        }
    }
}