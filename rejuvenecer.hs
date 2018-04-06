data Persona = UnaPersona String String Int deriving Show

email:: String -> Persona -> String
email servidor (UnaPersona nombre apellido anioNacimiento) = nombre ++ apellido ++ show anioNacimiento ++ "@" ++ servidor ++ ".com.ar"

edad:: Persona -> Int
edad persona = 2018 - anioNacimiento persona

anioNacimiento:: Persona -> Int
anioNacimiento (UnaPersona _ _ an) = an

rejuvenecer:: Int -> Persona -> Persona
rejuvenecer anios (UnaPersona nombre apellido anioNacimiento)= UnaPersona nombre (apellido++ " jr") (anioNacimiento + anios)
