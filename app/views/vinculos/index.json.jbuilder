json.array!(@vinculos) do |vinculo|
  json.extract! vinculo, :id, :comochegar, :atende, :unidade_id, :profissional_id, :especialidade_id
  json.url vinculo_url(vinculo, format: :json)
end
