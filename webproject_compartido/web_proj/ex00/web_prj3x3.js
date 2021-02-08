var mapa = [0, 0, 0,
	0, 0, 0,
	0, 0, 0,];
var jugador = 1;

function dibujar()
{
	for(i=0; i<9; i++)
	{
		if(mapa[i] == 1)
		{
			document.getElementById("block_"+i).style="color: #e78268; cursor: default";
			document.getElementById("block_"+i).innerHTML="X";
			document.getElementById("block_"+i).onmouseout="";
			document.getElementById("block_"+i).onmouseover="";	
		}
		if(mapa[i] == 2)
		{
			document.getElementById("block_"+i).style="color: #8bb4e4; cursor: default";
			document.getElementById("block_"+i).innerHTML="O";
			document.getElementById("block_"+i).onmouseout="";
			document.getElementById("block_"+i).onmouseover="";
		}
	}
}

function s_on(celda)
{
	if (jugador == 1)
	{
		celda.innerHTML="X";
		celda.style="color: #e78268"; 
	}
	else
	{
		celda.innerHTML="O";
		celda.style="color: #8bb4e4"; 
	}
}
function s_off(celda)
{
	celda.innerHTML="";
}

function pcelda(celda)
{
	if (mapa[celda]==0)
	{
	if (jugador==1)
	{
		mapa[celda]=1;
		jugador=2;
	}
	else
	{
		mapa[celda]=2;
		jugador=1; 
	}
	}
	dibujar();
	var r = ganador();
	switch(r)
	{
		case 0:
		break;
		case 1:
			document.getElementById("p1").style="visibility: visible;";
		break;
		case 2:
			alert("Gana el jugador 2");
		break;
		case 3:
			alert("Empate");
		break; 
	}
}
function ganador()
{
	var numEspacios=0;
	for(i=0; i<9; i++)
	if(mapa[i] == 0) numEspacios++;
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

	if (numEspacios > 0)
	{
		return 0;
	} 
	else 
	{
		return 3;
	}
}
