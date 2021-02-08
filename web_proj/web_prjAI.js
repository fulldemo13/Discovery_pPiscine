var mapa = [0, 0, 0,
			0, 0, 0,
			0, 0, 0,];

function numEspacios() {
	var espacios = 0;
	for(i=0; i<9; i++)
		if(mapa[i] == 0) espacios++;
	return espacios;
}

function dibujar()
{
	for(i=0; i<9; i++)
	{
		if(mapa[i] == 0) document.getElementById("c"+i).style="background-color: white";
		if(mapa[i] == 1)
		{
			document.getElementById("c"+i).style="color: red; cursor: default";
			document.getElementById("c"+i).innerHTML="X";
		}
		if(mapa[i] == 2)
		{
			document.getElementById("c"+i).style="color: blue; cursor: default";
			document.getElementById("c"+i).innerHTML="O";
		}
	}
}

function pcelda(celda)
{
	var ai_celda = Math.round(Math.random() * 9); 
	if (mapa[celda] == 0)
	{
		mapa[celda]=1;
	}
	//espacio para la AI
	if (numEspacios() > 1)
	{
		while (mapa[ai_celda] != 0)
			ai_celda = Math.round(Math.random() * 9);
		mapa[ai_celda]=2;
	}
	dibujar();
	var r = ganador();
	switch(r)
	{
		case 0:
		break;
		case 1:
			document.getElementById("p1").style="width: 322px; height: 322px; background-color: red; display: inline;";
		break;
		case 2:
			document.getElementById("p2").style="width: 322px; height: 322px; background-color: blue; display: inline;";
		break;
		case 3:
			document.getElementById("empate").style="width: 322px; height: 322px; background-color: yellow; display: inline;";
		break; 
	}
}

function ganador()
{
	var espacios = numEspacios();
	// Las líneas horizontales
	if(mapa[0] == mapa[1] && mapa[1] == mapa[2] && mapa[0] != 0) return mapa[0];
	if(mapa[3] == mapa[4] && mapa[4] == mapa[5] && mapa[3] != 0) return mapa[3];
	if(mapa[6] == mapa[7] && mapa[7] == mapa[8] && mapa[6] != 0) return mapa[6];
	//Las líneas verticales
	if(mapa[0] == mapa[3] && mapa[3] == mapa[6] && mapa[0] != 0) return mapa[0];
	if(mapa[1] == mapa[4] && mapa[4] == mapa[7] && mapa[1] != 0) return mapa[1];
	if(mapa[2] == mapa[5] && mapa[5] == mapa[8] && mapa[2] != 0) return mapa[2];
	//Las diagonales
	if(mapa[0] == mapa[4] && mapa[4] == mapa[8] && mapa[0] != 0) return mapa[0];
	if(mapa[2] == mapa[4] && mapa[4] == mapa[6] && mapa[2] != 0) return mapa[2];

	if (espacios > 0)
	{
		return 0;
	} 
	else 
	{
		return 3;
	}
}