class Table{
    int radius;
    ArrayList<Point> vertices;

    Table(int _r){
        this.radius = _r;
        this.vertices = new ArrayList<Point>();

        for(float a=0; a < TWO_PI; a+=TWO_PI/2000){
            float tempX = width/2 + this.radius * cos(a);
            float tempY = height/2 + this.radius * sin(a);
            this.vertices.add(new Point(tempX, tempY));
        }
    }

    boolean collide(Ball b){
        return false;
    }
    void display(){
        stroke(255);
        noFill();
        beginShape();
        for(Point v : this.vertices){
            vertex(v.x, v.y);
        }
        endShape(CLOSE);
    }
}