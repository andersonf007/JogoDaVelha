display.setStatusBar( display.HiddenStatusBar )
--meuTesto = display.newText({text="hello word",x=100,y=100})

--meuTesto:setFillColor(0,1,0)
--alterar a cor

--primeiraLinhaHorizontal = display.newLine(0,120,320,120)
--segundaLinhaHorizontal = display.newLine(0,360,320,360)
--primeiraLinhaVertical = display.newLine(80,0,80,480)
--segundaLinhaVertical = display.newLine(240,0,240,480)

local widget =  require ("widget")

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
--[[
function jogoDaVelha:validacaoDaJogada(linha,coluna)
	if linha <= 3 and coluna <= 3 then
        if self.jogo[linha][coluna] ~= " o " and self.jogo[linha][coluna] ~= " x " then
            return true        
        end
         if self.jogo[linha][coluna] == " o " or self.jogo[linha][coluna] == " x " then
            print("o campo esta preenchido")
            return false        
        end
    else
        print("Jogada invalida!")
        return false
    end
    return false
end
]]--
function toqueNaTela(toque)	

	if toque.phase == "began" then

		if myRectangle == true then

			if cont % 2 ~= 0 then
				myRectangle = false
				circo1 = display.newCircle(106/2,160/2,40)
				circo1:setFillColor(0)		
				circo1:setStrokeColor(0,1,0)
				circo1.strokeWidth = 8
				cont = cont + 1
			
			elseif cont % 2 == 0 then
				myRectangle = false
				x1 = display.newLine(0,0,teste,157)
				x1.strokeWidth = 3
				y1 = display.newLine(0,157,104,0)
				y1.strokeWidth = 3
				cont = cont + 1
			end
		end
	end
end

function toqueNaTela2(toque)	

	if toque.phase == "began" then
		
		if myRectangle2 ==  true then	
		
			if cont % 2 ~= 0 then
				myRectangle2 = false
				circo2 = display.newCircle(display.contentWidth/2,160/2,40)
				circo2:setFillColor(0)		
				circo2:setStrokeColor(0,1,0)
				circo2.strokeWidth = 8
				cont = cont + 1
			
			elseif cont % 2 == 0 then
				myRectangle2 = false
				x2 = display.newLine(teste + 4,0,teste*2,outro)
				x2.strokeWidth = 3
				y2 = display.newLine(teste + 5,outro,teste*2,0)
				y2.strokeWidth = 3
				cont = cont + 1
			end
		end
	end	
end

function toqueNaTela3(toque)	

	if toque.phase == "began" then
		if myRectangle3 == true then
			if cont % 2 ~= 0 then
				myRectangle3 = false
				circo3 = display.newCircle(265,160/2,40)
				circo3:setFillColor(0)		
				circo3:setStrokeColor(0,1,0)
				circo3.strokeWidth = 8
				cont = cont + 1
			
			elseif cont % 2 == 0 then
				myRectangle3 = false
				x3 = display.newLine(teste*2 + 7,0,teste*3,outro)
				x3.strokeWidth = 3
				y3 = display.newLine(teste*2 + 5,outro,teste*3,0)
				y3.strokeWidth = 3
				cont = cont + 1
			end
		end
	end
end

function toqueNaTela4(toque)	

	if toque.phase == "began" then
	
		if myRectangle4 == true then
	
			if cont % 2 ~= 0 then
				myRectangle4 = false
				circo4 = display.newCircle(106/2,display.contentHeight/2,40)
				circo4:setFillColor(0)		
				circo4:setStrokeColor(0,1,0)
				circo4.strokeWidth = 8
				cont = cont + 1
			
			elseif cont % 2 == 0 then
				myRectangle4 = false
				x4 = display.newLine(0,outro + 4,teste,outro*2)
				x4.strokeWidth = 3
				y4 = display.newLine(0,outro*2,teste,outro+4)
				y4.strokeWidth = 3
				cont = cont + 1
			end
		end
	end
end

function toqueNaTela5(toque)	

	if toque.phase == "began" then
		
		if myRectangle5 == true then
		
			if cont % 2 ~= 0 then
				myRectangle5 = false
				circo5 = display.newCircle(display.contentWidth/2,display.contentHeight/2,40)
				circo5:setFillColor(0)		
				circo5:setStrokeColor(0,1,0)
				circo5.strokeWidth = 8
				cont = cont + 1
			
			elseif cont % 2 == 0 then
				myRectangle5 = false
				x5 = display.newLine(teste + 4,outro,teste*2,outro*2)
				x5.strokeWidth = 3
				y5 = display.newLine(teste + 5,outro*2,teste*2,outro+4)
				y5.strokeWidth = 3
				cont = cont + 1
			end
		end
	end	
end

function toqueNaTela6(toque)	

	if toque.phase == "began" then

		if myRectangle6 == true then

			if cont % 2 ~= 0 then
				myRectangle6 = false
				circo6 = display.newCircle(270,display.contentHeight/2,40)
				circo6:setFillColor(0)		
				circo6:setStrokeColor(0,1,0)
				circo6.strokeWidth = 8
				cont = cont + 1
			
			elseif cont % 2 == 0 then
				myRectangle6 = false
				x6 = display.newLine(teste*2 + 7,outro,teste*3,outro*2)
				x6.strokeWidth = 3
				y6 = display.newLine(teste*2 + 5,outro*2,teste*3,outro)
				y6.strokeWidth = 3
				cont = cont + 1
			end
		end
	end
end

function toqueNaTela7(toque)	

	if toque.phase == "began" then
	
		if myRectangle7 == true then
	
			if cont % 2 ~= 0 then
				myRectangle7 = false
				circo7 = display.newCircle(106/2,390,40)
				circo7:setFillColor(0)		
				circo7:setStrokeColor(0,1,0)
				circo7.strokeWidth = 8	
				cont = cont + 1
			
			elseif cont % 2 == 0 then
				myRectangle7 = false
				x7 = display.newLine(0,outro*2 + 4,teste,outro*3)
				x7.strokeWidth = 3
				y7 = display.newLine(0,outro*3,teste,outro*2+4)
				y7.strokeWidth = 3
				cont = cont + 1
			end
		end
	end
end

function toqueNaTela8(toque)	

	if toque.phase == "began" then

		if myRectangle8 == true then

			if cont % 2 ~= 0 then
				myRectangle8 = true
				circo8 = display.newCircle(display.contentWidth/2,390,40)
				circo8:setFillColor(0)		
				circo8:setStrokeColor(0,1,0)
				circo8.strokeWidth = 8
				cont = cont + 1
			
			elseif cont % 2 == 0 then
				myRectangle8 = false
				x8 = display.newLine(teste + 4,outro*2,teste*2,outro*3)
				x8.strokeWidth = 3
				y8 = display.newLine(teste + 5,outro * 3,teste*2,outro*2)
				y8.strokeWidth = 3
				cont = cont + 1
			end
		end
	end
end

function toqueNaTela9(toque)	

	if toque.phase == "began" then
	
		if myRectangle9 == true then
	
			if cont % 2 ~= 0 then
				myRectangle9 = false
				circo9 = display.newCircle(270,390,40)
				circo9:setFillColor(0)		
				circo9:setStrokeColor(0,1,0)
				circo9.strokeWidth = 8
				cont = cont + 1
			
			elseif cont % 2 == 0 then
				myRectangle9 = false
				x9 = display.newLine(teste*2 + 7,outro*2,teste*3,outro*3)
				x9.strokeWidth = 3
				y9 = display.newLine(teste*2 + 5,outro*3,teste*3,outro*2)
				y9.strokeWidth = 3
				cont = cont + 1
			end
		end
	end
end



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




