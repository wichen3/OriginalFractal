int b = (int)(Math.random() * 255) + 1;
public void setup()
{
	size(500, 500);
	ellipseMode(CENTER);
	background(0);
	fill(0);
}
public void draw()
{
	fractal(250,250,325);
}
public void fractal(int x, int y, int siz) 
{
	if(siz > 10)
	{
		fractal(x+siz/2,y+siz/2,siz/3);
		fractal(x-siz/2,y+siz/2,siz/3);
		fractal(x+siz/2,y-siz/2,siz/3);
		fractal(x-siz/2,y-siz/2,siz/3);
		stroke((int)(Math.random() * 255) + 1,(int)(Math.random() * 255) + 50,(int)(Math.random() * 255) + 1);
		ellipse(x, y, siz, siz);
	}
	else if(siz > 5)
	{
		stroke((int)(Math.random() * 255) + 1,(int)(Math.random() * 255) + 50,(int)(Math.random() * 255) + 1);
		ellipse(x,y,siz,siz);
		fractal(siz/8 + 100,siz/8 + 100,siz/6);
	}
	else 
	{
		stroke((int)(Math.random() * 255) + 1,(int)(Math.random() * 255) + 50,(int)(Math.random() * 255) + 1);
		rect(x, y,siz, siz);
	}
}
