USE PClinics

INSERT INTO Donos (Nome)
VALUES			  ('Gabriel dos Santos Pereira')

INSERT INTO TipoPet (Descricao)
VALUES				('Cachorro')

INSERT INTO Racas (Descricao, IdTipoPet)
VALUES			  ('Shih tzu', 1)

INSERT INTO Pets (Nome, DataNascimento, IdRaca, IdDono)
VALUES			 ('Mel', '27/09/2015', 1, 1)

INSERT INTO Clinicas (RazaoSocial, CNPJ, Endereco)
VALUES				 ('Clínica Veterinária', '0000000', 'Rua blablabla')

INSERT INTO Veterinarios (Nome, CRMV, IdClinica)
VALUES					 ('Jonas', '000000', 1)

INSERT INTO Atendimentos (Descricao, DataAtendimento, IdVeterinario, IdPet)
VALUES					 ('Check-up', '07/04/2022', 1, 1)
