data Persona = UnaPersona String String Int deriving Show

-- Punto 1
email :: String -> Persona -> String
email servidor (UnaPersona nombre apellido anioNacimiento) = nombre ++ apellido ++ show anioNacimiento ++ "@" ++ servidor ++ ".com.ar"
-- EJEMPLO DE EJECUCION email "Yahoo" (UnaPersona "Tomas" "Behringer" 1998)

-- Punto 2
anioNacimiento:: Persona -> Int
anioNacimiento (UnaPersona _ _ an) = an
edad :: Persona -> Int
edad persona = 2018 - anioNacimiento persona
-- EJEMPLO DE EJECUCION edad (UnaPersona "Tomas" "Behringer" 1998)

-- Punto 3
rejuvenecer :: Int -> Persona -> Persona
rejuvenecer anios (UnaPersona nombre apellido anioNacimiento)= UnaPersona nombre (apellido++ " jr") (anioNacimiento + anios)
-- EJEMPLO DE EJECUCION rejuvenecer 5(UnaPersona "Tomas" "Behringer" 1998)

-- Punto 4
fusionar :: Persona -> Persona -> Persona
fusionar (UnaPersona nombre1 apellido1 anioNacimiento1) (UnaPersona nombre2 apellido2 anioNacimiento2) = UnaPersona (nombre1 ++ nombre2) "fusion" anioNacimiento1
-- EJEMPLO DE EJECUCION fusionar (UnaPersona "Tomas" "Behringer" 1998) (UnaPersona "Juan" "Perez" 1990)

-- Punto 5
-- la fusión de rejuvenecer a cada uno.
licuado :: Int -> Int -> Persona -> Persona -> Persona
licuado fusionar ((rejuvenecer anios1(UnaPersona nombre1 apellido1 anioNacimiento1)) (rejuvenecer anios2(UnaPersona nombre2 apellido2 anioNacimiento2)) = UnaPersona (nombre1 ++ nombre2) "fusion" anioNacimiento1
--licuado fusionar( (10(UnaPersona "Tomas" "Behringer" 1998)) (5(UnaPersona "Juan" "Perez" 1990)) )