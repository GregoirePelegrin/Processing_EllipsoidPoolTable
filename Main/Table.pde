class Table{
    Table(){}

    boolean collide(Ball b){
        boolean modified = false;
        float tempX = b.posX + SPEED * cos(b.angle);
        float tempY = b.posY + SPEED * sin(b.angle);

        if(tempX < 0){
            modified = true;

            float tempS = SPEED * cos(b.angle);
            float tempD = b.posX;
            b.posX = abs(tempS) - tempD;

            if(b.angle <= 0){
                b.angle = -(PI + b.angle);
            } else {
                b.angle = PI - b.angle;
            }
        } else if(tempX > width){
            modified = true;

            float tempS = SPEED * cos(b.angle);
            float tempD = width - b.posX;
            b.posX = width - (tempS - tempD);

            if(b.angle <= 0){
                b.angle = -(PI + b.angle);
            } else {
                b.angle = PI - b.angle;
            }
        }
        if(tempY < 0){
            modified = true;

            float tempS = SPEED * sin(b.angle);
            float tempD = b.posY;
            b.posY = abs(tempS) - tempD;

            b.angle = -b.angle;
        } else if(tempY > height){
            modified = true;

            float tempS = SPEED * sin(b.angle);
            float tempD = height - b.posY;
            b.posY = height - (tempS - tempD);

            b.angle = -b.angle;
        }
        
        return modified;
    }
}