% FINANCEIRO

pobre(bia).
pobre(bernardo).
pobre(pedro).
pobre(maria).
rico(caren).
rico(alice).
rico(henrique).
rico(adriano).

% RELACIONAMENTOS 

relacionamento(bernardo, anita).
relacionamento(bernardo, caren).
relacionamento(anita, pedro).
relacionamento(pedro, alice).
relacionamento(henrique, alice).
relacionamento(henrique, maria).
relacionamento(adriano, maria).
relacionamento(adriano, caren).

% INSANIDADE

insanidade(adriano).
insanidade(maria).

% DINHEIRO

dinheiro(X) :- pobre(X).

% CIUMES

ciumesanita(X,Y) :- relacionamento(X, Y), relacionamento(Y, _); relacionamento(Y, X), relacionamento(X, _); relacionamento(A, X), relacionamento(Y, A); relacionamento(A, X), relacionamento(A, Y).

% FATOS

% PEDRO
fato(pedro, sm, segunda).
fato(pedro, sm, terca).
fato(pedro, poa, quarta).
fato(pedro, sm, quinta).
fato(pedro, ap, sexta).

% CAREN 
fato(caren, poa, segunda).
fato(caren, poa, terca).
fato(caren, poa, quarta).
fato(caren, sm, quinta).
fato(caren, ap, sexta).

% HENRIQUE 
fato(henrique, ap, segunda).
fato(henrique, poa, terca).
fato(henrique, ap, quarta).
fato(henrique, ap, quinta).
fato(henrique, ap, sexta).

% BIA 
fato(bia, ap, segunda).
fato(bia, poa, terca).
fato(bia, poa, quarta).
fato(bia, sm, quinta).
fato(bia, ap, sexta).

% ADRIANO 
fato(adriano, ap, segunda).
fato(adriano, ap, terca).
fato(adriano, sm, quarta).
fato(adriano, ap, quinta).
fato(adriano, ap, sexta).

% ALICE 
fato(alice, ap, segunda).
fato(alice, poa, terca).
fato(alice, poa, quarta).
fato(alice, ap, quinta).
fato(alice, ap, sexta).

% BERNADO 
fato(bernado, sm, segunda).
fato(bernado, sm, terca).
fato(bernado, poa, quarta).
fato(bernado, sm, quinta).
fato(bernado, ap, sexta).

% MARIA 
fato(maria, ap, segunda).
fato(maria, sm, terca).
fato(maria, sm, quarta).
fato(maria, sm, quinta).
fato(maria, ap, sexta).

% MOTIVOS PARA O ASSASSINATO

motivo(X) :-  ciumesanita(X, anita); insanidade(X); dinheiro(X).


% ACESSO AO AP 

acesso(X):- rouboarma(X), roubochave(X), estavanoap(X).

% CONCLUSÕES

roubochave(X) :- fato(X, sm, segunda) ; fato(X, poa, terca).
rouboarma(X) :- fato(X, poa, quinta) ; fato(X, sm, quarta) ; fato(X, ap, quarta) ; fato(X, ap, quinta).
estavanoap(X) :- fato(X, ap, quinta) ; fato(X, ap, sexta).

assassino(X) :- motivo(X), acesso(X).