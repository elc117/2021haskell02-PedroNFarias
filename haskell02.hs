-- Prática 02 de Haskell
-- Nome: Pedro Farias

temFebre :: Float -> Bool
temFebre val = if val > 37.8 then True else False
--Verifica se possui febre--
comFebre :: [Float] -> [Float]
comFebre val = filter temFebre val

--Verifica se possui febre--
comFebre' :: [Float] -> [Float]
comFebre' val = filter (\x -> x > 37.8) val

--Adiciona as tags HTML às palavras--
itemize :: [String] -> [String]
itemize str = map (\x -> "<li>" ++ x ++ "</li>") str

--Verifica se o círculo possui raio maior que--
bigCircles :: Float -> [Float] -> [Float]
bigCircles area lista = filter ((\x y -> x < (pi*(y^2))) area) lista

--Retorna as pessoas com temperatura maior que 37.8--
quarentena :: [(String,Float)] -> [(String,Float)]
quarentena tupla = filter (\(_,temp) -> temp > 37.8) tupla

--Recebe uma lista de anos de nascimento e um ano de referência''
idadesEm :: [Int] -> Int -> [Int]
idadesEm lista ano = map ((\x y -> x - y)ano) lista

changeNames :: [String] -> [String]
changeNames lista = map (\x -> if head x == 'A' then "Super " ++ x  else x) lista

--Retorna as strings que tem menos de 5 caracteres--
onlyShorts :: [String] -> [String]
onlyShorts lista = filter (\x -> length x < 5) lista