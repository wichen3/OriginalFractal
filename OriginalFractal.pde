public void setup()
{
	size(512, 512);
	background(0);
	ellipseMode(CENTER);
	stroke(0);
	fill(230);
}
public void draw()
{
	fractal(250,250,400);
}
public void fractal(int x, int y, int siz)
{
	ellipse(x, y, siz, siz);
	if(siz > 25)
	{
		fractal(x - siz/2, y, siz/2);
		fractal(x + siz/2, y, siz/2);
		fractal(x - siz/2, y + siz, siz/2);
		fractal(x - siz/2, y - siz, siz/2);
		fractal(x - siz/2, y - siz/2, siz/2);
		fractal(x - siz/2, y - siz * 2, siz/2);

	}
}    