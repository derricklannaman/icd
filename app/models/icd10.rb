class Icd10 < ApplicationRecord
  searchkick text_start: [:description]
end
