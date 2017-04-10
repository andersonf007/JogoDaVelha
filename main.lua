display.setStatusBar( display.HiddenStatusBar )
--meuTesto = display.newText({text="hello word",x=100,y=100})

--meuTesto:setFillColor(0,1,0)
--alterar a cor

--primeiraLinhaHorizontal = display.newLine(0,120,320,120)
--segundaLinhaHorizontal = display.newLine(0,360,320,360)
--primeiraLinhaVertical = display.newLine(80,0,80,480)
--segundaLinhaVertical = display.newLine(240,0,240,480)

local widget =  require ("widget")

-----------TESTE PARA FAZER O X--------------------
--[[
l1 = display.newLine(230, 342, 305, 342)
l2 = display.newLine(230, 342, 230, 442)
l3 = display.newLine(305, 342, 305, 442)
l4 = display.newLine( 230, 442,305, 442)


				x17 = display.newLine(230, 342, 305, 442)
				x18 = display.newLine(230, 442, 305, 342)
]]

----------TESTE PARA FAZER O X---------------------
--Criar Linhas
primeiraLinhaHorizontal = display.newLine(0,display.contentHeight/3,display.contentWidth,display.contentHeight/3)
segundaLinhaHorizontal = display.newLine(0,display.contentHeight*0.66,display.contentWidth,display.contentHeight*0.66)
primeiraLinhaVertical = display.newLine(display.contentWidth/3,0,display.contentWidth/3,display.contentHeight)
segundaLinhaVertical = display.newLine(display.contentWidth*0.66,0,display.contentWidth*0.66,display.contentHeight)

-- altera a grossura da linha
primeiraLinhaHorizontal.strokeWidth = 5 
segundaLinhaHorizontal.strokeWidth = 5
primeiraLinhaVertical.strokeWidth = 5
segundaLinhaVertical.strokeWidth = 5
------------------------------------------------------------------
--cria os retangulos invisiveis para servirem como botoes
myRectangle = display.newRect( 0, 0, 104, 157)
myRectangle.anchorX = 0
myRectangle.anchorY = 0
--myRectangle.strokeWidth = 3
myRectangle:setFillColor( 0,0,0,0.1 )
myRectangle:setStrokeColor( 1, 0, 0 )

myRectangle2 = display.newRect( 109, 0, 100, 157)
myRectangle2.anchorX = 0
myRectangle2.anchorY = 0
--myRectangle.strokeWidth = 3
myRectangle2:setFillColor( 0,0,0,0.1 )
myRectangle2:setStrokeColor( 1, 0, 0 )

myRectangle3 = display.newRect( 214, 0, 106, 157)
myRectangle3.anchorX = 0
myRectangle3.anchorY = 0
--myRectangle.strokeWidth = 3
myRectangle3:setFillColor( 0,0,0,0.1 )
myRectangle3:setStrokeColor( 1, 0, 0 )
-------------------------------------------------------------------
myRectangle4 = display.newRect( 0, 162, 104, 152)
myRectangle4.anchorX = 0
myRectangle4.anchorY = 0
--myRectangle.strokeWidth = 3
myRectangle4:setFillColor( 0,0,0,0.1 )
myRectangle4:setStrokeColor( 1, 0, 0 )

myRectangle5 = display.newRect( 109, 162, 100, 152)
myRectangle5.anchorX = 0
myRectangle5.anchorY = 0
--myRectangle.strokeWidth = 3
myRectangle5:setFillColor( 0,0,0,0.1 )
myRectangle5:setStrokeColor( 1, 0, 0 )

myRectangle6 = display.newRect( 214, 162, 106, 152)
myRectangle6.anchorX = 0
myRectangle6.anchorY = 0
--myRectangle.strokeWidth = 3
myRectangle6:setFillColor( 0,0,0,0.1 )
myRectangle6:setStrokeColor( 1, 0, 0 )
-------------------------------------------------------------------
myRectangle7 = display.newRect( 0, 319, 104, 161)
myRectangle7.anchorX = 0
myRectangle7.anchorY = 0
--myRectangle.strokeWidth = 3
myRectangle7:setFillColor( 0,0,0,0.1)
myRectangle7:setStrokeColor( 1, 0, 0 )

myRectangle8 = display.newRect( 109, 319, 100, 161)
myRectangle8.anchorX = 0
myRectangle8.anchorY = 0
--myRectangle.strokeWidth = 3
myRectangle8:setFillColor( 0,0,0,0.1 )
myRectangle8:setStrokeColor( 1, 0, 0 )

myRectangle9 = display.newRect( 214, 319, 106, 161)
myRectangle9.anchorX = 0
myRectangle9.anchorY = 0
--myRectangle.strokeWidth = 3
myRectangle9:setFillColor( 0,0,0,0.1 )
myRectangle9:setStrokeColor( 1, 0, 0 )
------------------------------------------------------------------
cont = 1
teste = 104
outro = 157
contar = 0
geral = 0
--------------------------------------------------------------------------------------------

function vencer()
	tipoDejogador = ""
	vencedor = false

	--verificando as linhas =========================================================================
	if verificacao1 == true and verificacao2 == true and verificacao3  == true then
		tipoDejogador = "1"
		vencedor = true

	elseif verificacao11 == true and verificacao22 == true and verificacao33  == true then
		tipoDejogador = "2"
		vencedor = true

	elseif verificacao4 == true and verificacao5 == true and verificacao6  == true then
		tipoDejogador = "1"
		vencedor = true

	elseif verificacao44 == true and verificacao55 == true and verificacao66  == true then
		tipoDejogador = "2"
		vencedor = true

	elseif verificacao7 == true and verificacao8 == true and verificacao9  == true then
		tipoDejogador = "1"
		vencedor = true

	elseif verificacao77 == true and verificacao88 == true and verificacao99  == true then
		tipoDejogador = "2"
		vencedor = true

	--verificando as diagonais =========================================================================
	elseif verificacao1 == true and verificacao5 == true and verificacao9 == true then
		tipoDejogador = "1"
		vencedor = true

	elseif  verificacao11 == true and verificacao55 == true and verificacao99 == true then
		tipoDejogador = "2"
		vencedor = true

	elseif verificacao3 == true and verificacao5 == true and verificacao7 == true then
		tipoDejogador = "1"
		vencedor = true

	elseif verificacao33 == true and verificacao55 == true and verificacao77 == true then
		tipoDejogador = "2"
		vencedor = true

	-- verificando as colunas =========================================================================
	elseif verificacao1 == true and verificacao4 == true and verificacao7 == true then
		tipoDejogador = "1"
		vencedor = true

	elseif verificacao11 == true and verificacao44 == true and verificacao77 == true then
		tipoDejogador = "2"
		vencedor = true

	elseif verificacao2 == true and verificacao5 == true and verificacao8 == true then
		tipoDejogador = "1"
		vencedor = true

	elseif verificacao22 == true and verificacao55 == true and verificacao88 == true then
		tipoDejogador = "2"
		vencedor = true

	elseif verificacao3 == true and verificacao6 == true and verificacao9 == true then
		tipoDejogador = "1"
		vencedor = true

	elseif verificacao33 == true and verificacao66 == true and verificacao99 == true then
		tipoDejogador = "2"
		vencedor = true
	end

	if vencedor == true then
		return vencedor
	else
		vencedor = false
		return vencedor
	end
end
--[[
function empate()
	
	--verificando as linhas =========================================================================
	if verificacao1 ~= verificacao2 and verificacao2 ~= verificacao3  and  verificacao11 ~= verificacao22 and verificacao22 ~= verificacao33 then
		contar = contar + 1
	
	elseif verificacao4 ~= verificacao5 and verificacao5 ~= verificacao6 and verificacao44 ~= verificacao55 and verificacao55 ~= verificacao66 then
		contar = contar + 1

	elseif verificacao7 ~= verificacao8 and verificacao8 ~= verificacao9 and verificacao77 ~= verificacao88 and verificacao88 ~= verificacao99 then
		contar = contar + 1
	
	--verificando as diagonais =========================================================================
	elseif verificacao1 ~= verificacao5 and verificacao5 ~= verificacao9 and  verificacao11 ~= verificacao55 and verificacao55 ~= verificacao99 then
		contar = contar + 1

	elseif verificacao3 ~= verificacao5 and verificacao5 ~= verificacao7 and verificacao33 ~= verificacao55 and verificacao55 ~= verificacao77 then
		contar = contar + 1

	-- verificando as colunas =========================================================================
	elseif verificacao1 ~= verificacao4 and verificacao4 ~= verificacao7 and verificacao11 ~= verificacao44 and verificacao44 ~= verificacao77 then
		contar = contar + 1

	elseif verificacao2 ~= verificacao5 and verificacao5 ~= verificacao8 and verificacao22 ~= verificacao55 and verificacao55 ~= verificacao88 then
		contar = contar + 1

	elseif verificacao3 ~= verificacao6 and verificacao6 ~= verificacao9 and verificacao33 ~= verificacao66 and verificacao66 ~= verificacao99 then
		contar = contar + 1
	end
	if contar == 9 then 
		print("contador master")
		return true
	else 
		print("nao deu empate")
		return false
	end	
end
]]--
--------------------------------------------------------------------------------------------

function toqueNaTela(toque)	

	if vencer() then
		if tipoDejogador == "1" then
		print("jogador 1 venceu")
		elseif tipoDejogador == "2" then
		print("jogador 2 venceu")
		end
	end
	if geral == 9 and vencer() == false then
		print("deu empate")
	end

	if toque.phase == "began" then

		if myRectangle == true then

			if cont % 2 ~= 0 then
				verificacao1 = true -- verificacao para ajudar no metodo vencer
				myRectangle = false -- verificacao para ajudar a evitar q cliquem duas vezes no mesmo campo
				circo1 = display.newCircle(106/2,160/2,40)
				circo1:setFillColor(0)		
				circo1:setStrokeColor(0,1,0)
				circo1.strokeWidth = 8
				cont = cont + 1
				geral = geral + 1
			
			elseif cont % 2 == 0 then
				verificacao11 = true
				myRectangle = false
				x1 = display.newLine(15, 25, 90, 125)
				x2 = display.newLine(90, 25, 15, 125)
				x1.strokeWidth = 3
				x2.strokeWidth = 3
				cont = cont + 1
				geral = geral + 1
			end
		end
	end
end

function toqueNaTela2(toque)	
	
	if vencer() then
		if tipoDejogador == "1" then
		print("jogador 1 venceu")
		elseif tipoDejogador == "2" then
		print("jogador 2 venceu")
		end
	end
	if geral == 9 and vencer() == false then
		print("deu empate")
	end

	if toque.phase == "began" then
		
		if myRectangle2 ==  true then	
		
			if cont % 2 ~= 0 then
				verificacao2 = true
				myRectangle2 = false
				circo2 = display.newCircle(display.contentWidth/2,160/2,40)
				circo2:setFillColor(0)		
				circo2:setStrokeColor(0,1,0)
				circo2.strokeWidth = 8
				cont = cont + 1
				geral = geral + 1
			
			elseif cont % 2 == 0 then
				verificacao22 = true
				myRectangle2 = false

				x3 = display.newLine(120, 25, 195, 125)
				x4 = display.newLine(120, 125, 195, 25)
				x3.strokeWidth = 3
				x4.strokeWidth = 3
				cont = cont + 1
				geral = geral + 1
			end
		end
	end	
end

function toqueNaTela3(toque)	
    
	
	if vencer() then
		if tipoDejogador == "1" then
		print("jogador 1 venceu")
		elseif tipoDejogador == "2" then
		print("jogador 2 venceu")
		end
	end
	if geral == 9 and vencer() == false then
		print("deu empate")
	end

	if toque.phase == "began" then
		
		if myRectangle3 == true then
		
			if cont % 2 ~= 0 then
				verificacao3 = true
				myRectangle3 = false
				circo3 = display.newCircle(265,160/2,40)
				circo3:setFillColor(0)		
				circo3:setStrokeColor(0,1,0)
				circo3.strokeWidth = 8
				cont = cont + 1
				geral = geral + 1
			
			elseif cont % 2 == 0 then
				verificacao33 = true
				myRectangle3 = false

				x5 = display.newLine(230, 25, 305, 125)
				x6 = display.newLine(230, 125, 305, 25)
				x5.strokeWidth = 3
				x6.strokeWidth = 3
				cont = cont + 1
				geral = geral + 1
			end
		end
	end
end

--------------------------------------------------------------------------------------------

function toqueNaTela4(toque)	
	
	
	if vencer() then
		if tipoDejogador == "1" then
		print("jogador 1 venceu")
		elseif tipoDejogador == "2" then
		print("jogador 2 venceu")
		end
	end
	if geral == 9 and vencer() == false then
		print("deu empate")
	end

	if toque.phase == "began" then
	
		if myRectangle4 == true then
	
			if cont % 2 ~= 0 then
				verificacao4 = true
				myRectangle4 = false
				circo4 = display.newCircle(106/2,display.contentHeight/2,40)
				circo4:setFillColor(0)		
				circo4:setStrokeColor(0,1,0)
				circo4.strokeWidth = 8
				cont = cont + 1
				geral = geral + 1
			
			elseif cont % 2 == 0 then
				verificacao44 = true
				myRectangle4 = false

				x7 = display.newLine(15, 187, 90, 287)
				x8 = display.newLine(15, 287, 90, 187)
				x7.strokeWidth = 3
				x8.strokeWidth = 3
				cont = cont + 1
				geral = geral + 1
			end
		end
	end
end

function toqueNaTela5(toque)	
	
	if vencer() then
		if tipoDejogador == "1" then
		print("jogador 1 venceu")
		elseif tipoDejogador == "2" then
		print("jogador 2 venceu")
		end
	end
	if geral == 9 and vencer() == false then
		print("deu empate")
	end
	
	if toque.phase == "began" then
		
		if myRectangle5 == true then
		
			if cont % 2 ~= 0 then
				verificacao5 = true
				myRectangle5 = false
				circo5 = display.newCircle(display.contentWidth/2,display.contentHeight/2,40)
				circo5:setFillColor(0)		
				circo5:setStrokeColor(0,1,0)
				circo5.strokeWidth = 8
				cont = cont + 1
				geral = geral + 1
			
			elseif cont % 2 == 0 then
				verificacao55 = true
				myRectangle5 = false

				x9 = display.newLine(120, 187, 195, 287)
				x10 = display.newLine(120, 287, 195, 187)
				x9.strokeWidth = 3
				x10.strokeWidth = 3
				cont = cont + 1
				geral = geral + 1
			end
		end
	end	
end

function toqueNaTela6(toque)	
	
	if vencer() then
		if tipoDejogador == "1" then
		print("jogador 1 venceu")
		elseif tipoDejogador == "2" then
		print("jogador 2 venceu")
		end
	end
	if geral == 9 and vencer() == false then
		print("deu empate")
	end
	
	if toque.phase == "began" then

		if myRectangle6 == true then

			if cont % 2 ~= 0 then
				verificacao6 = true
				myRectangle6 = false
				circo6 = display.newCircle(270,display.contentHeight/2,40)
				circo6:setFillColor(0)		
				circo6:setStrokeColor(0,1,0)
				circo6.strokeWidth = 8
				cont = cont + 1
				geral = geral + 1
			
			elseif cont % 2 == 0 then
				verificacao66 = true
				myRectangle6 = false

				x11 = display.newLine(230, 187, 305, 287)
				x12 = display.newLine(230, 287, 305, 187)
				x11.strokeWidth = 3
				x12.strokeWidth = 3
				cont = cont + 1
				geral = geral + 1
			end
		end
	end
end

--------------------------------------------------------------------------------------------

function toqueNaTela7(toque)	
	
	if vencer() then
		if tipoDejogador == "1" then
		print("jogador 1 venceu")
		elseif tipoDejogador == "2" then
		print("jogador 2 venceu")
		end
	end
	if geral == 9 and vencer() == false then
		print("deu empate")
	end
	
	if toque.phase == "began" then
	
		if myRectangle7 == true then
	
			if cont % 2 ~= 0 then
				verificacao7 = true
				myRectangle7 = false
				circo7 = display.newCircle(106/2,390,40)
				circo7:setFillColor(0)		
				circo7:setStrokeColor(0,1,0)
				circo7.strokeWidth = 8	
				cont = cont + 1
				geral = geral + 1
			
			elseif cont % 2 == 0 then
				verificacao77 = true
				myRectangle77 = false

				x13 = display.newLine(15, 342, 90, 442)
				x14 = display.newLine(15, 442, 90, 342)
				x13.strokeWidth = 3
				x14.strokeWidth = 3
				cont = cont + 1
				geral = geral + 1
			end
		end
	end
end

function toqueNaTela8(toque)	
	
	if vencer() then
		if tipoDejogador == "1" then
		print("jogador 1 venceu")
		elseif tipoDejogador == "2" then
		print("jogador 2 venceu")
		end
	end
	if geral == 9 and vencer() == false then
		print("deu empate")
	end

	if toque.phase == "began" then

		if myRectangle8 == true then

			if cont % 2 ~= 0 then
				verificacao8 = true
				myRectangle8 = true
				circo8 = display.newCircle(display.contentWidth/2,390,40)
				circo8:setFillColor(0)		
				circo8:setStrokeColor(0,1,0)
				circo8.strokeWidth = 8
				cont = cont + 1
				geral = geral + 1
			
			elseif cont % 2 == 0 then
				verificacao88 = true
				myRectangle8 = false

				x15 = display.newLine(120, 342, 195, 442)
				x16 = display.newLine(120, 442, 195, 342)
				x15.strokeWidth = 3
				x16.strokeWidth = 3
				cont = cont + 1
				geral = geral + 1
			end
		end
	end
end

function toqueNaTela9(toque)	

	if vencer() then
		if tipoDejogador == "1" then
		print("jogador 1 venceu")
		elseif tipoDejogador == "2" then
		print("jogador 2 venceu")
		end
	end
	if geral == 9 and vencer() == false then
		print("deu empate")
	end

	if toque.phase == "began" then
	
		if myRectangle9 == true then
	
			if cont % 2 ~= 0 then
				verificacao9 = true
				myRectangle9 = false
				circo9 = display.newCircle(270,390,40)
				circo9:setFillColor(0)		
				circo9:setStrokeColor(0,1,0)
				circo9.strokeWidth = 8
				cont = cont + 1
				geral = geral + 1
			
			elseif cont % 2 == 0 then
				verificacao99 = true
				myRectangle9 = false

				x17 = display.newLine(230, 342, 305, 442)
				x18 = display.newLine(230, 442, 305, 342)
				x17.strokeWidth = 3
				x18.strokeWidth = 3
				cont = cont + 1
				geral = geral + 1
			end
		end
	end
end

--------------------------------------------------------------------------------------------

myRectangle:addEventListener("touch",toqueNaTela)
myRectangle = true
myRectangle2:addEventListener("touch",toqueNaTela2)
myRectangle2 = true
myRectangle3:addEventListener("touch",toqueNaTela3)
myRectangle3 = true
myRectangle4:addEventListener("touch",toqueNaTela4)
myRectangle4 = true
myRectangle5:addEventListener("touch",toqueNaTela5)
myRectangle5 = true
myRectangle6:addEventListener("touch",toqueNaTela6)
myRectangle6 = true
myRectangle7:addEventListener("touch",toqueNaTela7)
myRectangle7 = true
myRectangle8:addEventListener("touch",toqueNaTela8)
myRectangle8 = true
myRectangle9:addEventListener("touch",toqueNaTela9)
myRectangle9 = true


function realizarJogada(linha,coluna)

	if linha == 1 and coluna == 1 then
		circo1 = display.newCircle(106/2,160/2,40)
		circo1:setFillColor(0)		
		circo1:setStrokeColor(0,1,0)
		circo1.strokeWidth = 8
	end
	if linha == 1 and coluna == 2 then
		circo2 = display.newCircle(display.contentWidth/2,160/2,40)
		circo2:setFillColor(0)		
		circo2:setStrokeColor(0,1,0)
		circo2.strokeWidth = 8
	end
	if linha == 1 and coluna == 3 then
		circo3 = display.newCircle(265,160/2,40)
		circo3:setFillColor(0)		
		circo3:setStrokeColor(0,1,0)
		circo3.strokeWidth = 8
	end

	if linha == 2 and coluna == 1 then
		circo4 = display.newCircle(106/2,display.contentHeight/2,40)
		circo4:setFillColor(0)		
		circo4:setStrokeColor(0,1,0)
		circo4.strokeWidth = 8
	end
	if linha == 2 and coluna == 2 then
		circo5 = display.newCircle(display.contentWidth/2,display.contentHeight/2,40)
		circo5:setFillColor(0)		
		circo5:setStrokeColor(0,1,0)
		circo5.strokeWidth = 8
	end
	if linha == 2 and coluna == 3 then
		circo6 = display.newCircle(270,display.contentHeight/2,40)
		circo6:setFillColor(0)		
		circo6:setStrokeColor(0,1,0)
		circo6.strokeWidth = 8
	end

	if linha == 3 and coluna == 1 then
		circo7 = display.newCircle(106/2,390,40)
		circo7:setFillColor(0)		
		circo7:setStrokeColor(0,1,0)
		circo7.strokeWidth = 8		
	end
	if linha == 3 and coluna == 2 then
		circo8 = display.newCircle(display.contentWidth/2,390,40)
		circo8:setFillColor(0)		
		circo8:setStrokeColor(0,1,0)
		circo8.strokeWidth = 8
	end
	if linha == 3 and coluna == 3 then
		circo9 = display.newCircle(270,390,40)
		circo9:setFillColor(0)		
		circo9:setStrokeColor(0,1,0)
		circo9.strokeWidth = 8
	end	
end


--[[
teste = 104
outro = 157
x1 = display.newLine(0,0,teste,157)
x1.strokeWidth = 3
y1 = display.newLine(0,157,104,0)
y1.strokeWidth = 3

x2 = display.newLine(teste + 4,0,teste*2,outro)
x2.strokeWidth = 3
y2 = display.newLine(teste + 5,outro,teste*2,0)
y2.strokeWidth = 3

x3 = display.newLine(teste*2 + 7,0,teste*3,outro)
x3.strokeWidth = 3
y3 = display.newLine(teste*2 + 5,outro,teste*3,0)
y3.strokeWidth = 3

x4 = display.newLine(0,outro + 4,teste,outro*2)
x4.strokeWidth = 3
y4 = display.newLine(0,outro*2,teste,outro+4)
y4.strokeWidth = 3

x5 = display.newLine(teste + 4,outro,teste*2,outro*2)
x5.strokeWidth = 3
y5 = display.newLine(teste + 5,outro*2,teste*2,outro+4)
y5.strokeWidth = 3

x6 = display.newLine(teste*2 + 7,outro,teste*3,outro*2)
x6.strokeWidth = 3
y6 = display.newLine(teste*2 + 5,outro*2,teste*3,outro)
y6.strokeWidth = 3

x7 = display.newLine(0,outro*2 + 4,teste,outro*3)
x7.strokeWidth = 3
y7 = display.newLine(0,outro*3,teste,outro*2+4)
y7.strokeWidth = 3

x8 = display.newLine(teste + 4,outro*2,teste*2,outro*3)
x8.strokeWidth = 3
y8 = display.newLine(teste + 5,outro * 3,teste*2,outro*2)
y8.strokeWidth = 3

x9 = display.newLine(teste*2 + 7,outro*2,teste*3,outro*3)
x9.strokeWidth = 3
y9 = display.newLine(teste*2 + 5,outro*3,teste*3,outro*2)
y9.strokeWidth = 3

]]--








--[[
realizarJogada(1,1)
realizarJogada(1,2)
realizarJogada(1,3)

realizarJogada(2,1)
realizarJogada(2,2)
realizarJogada(2,3)

realizarJogada(3,1)
realizarJogada(3,2)
realizarJogada(3,3)
--]]



print(display.contentWidth)
print(display.contentHeight)




