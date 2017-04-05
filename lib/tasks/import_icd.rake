namespace :import do
  desc "Import icd-10 codes from txt file"
  task icd: :environment  do
    puts "Start import of icd-10 codes..."
    IO.foreach('icd10cm_codes_2017.txt') do |line|
      code_name, *desc = line.split(" ")
      description = desc.join(" ")
      Icd10.create(code_system: "ICD-10-CM", code: code_name, description: description)
    end
    puts "Finish importing codes"
  end

end