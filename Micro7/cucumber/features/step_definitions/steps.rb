
class Loja
    def promocao_do_dia(dia)
        if dia == "quarta-feira"
            return "desconto de 30% nos artigos esportivos"
        end
    end
end

Dado('que hoje e {string}') do |dia|
    @hoje = dia
end
  
Quando('pergunto qual e a promocao do dia') do
    @valor_obtido = Loja.new.promocao_do_dia(@hoje)
end
  
Então('a resposta deve ser {string}') do |promoçao_esperada|
    expect(@valor_obtido).to eql promoçao_esperada
end