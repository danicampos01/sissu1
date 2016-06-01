class Vinculo < ActiveRecord::Base
  belongs_to :unidade
  belongs_to :profissional
  belongs_to :especialidade
end
