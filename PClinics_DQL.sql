USE PClinics

SELECT A.Descricao, A.DataAtendimento, P.Nome, P.DataNascimento, V.Nome FROM Atendimentos AS A
INNER JOIN Pets AS P
ON A.IdPet = P.IdPet
INNER JOIN Veterinarios AS V
ON A.IdVeterinario = V.IdVeterinario

SELECT * FROM Pets AS P
INNER JOIN Racas AS R
ON P.IdRaca = R.IdRaca
INNER JOIN Donos AS D
ON P.IdDono = D.IdDono