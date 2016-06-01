json.array!(@unidades) do |unidade|
  json.extract! unidade, :id, :nome, :bairro, :endereco, :comochegar, :longitude, :latitude
  json.url unidade_url(unidade, format: :json)
end
