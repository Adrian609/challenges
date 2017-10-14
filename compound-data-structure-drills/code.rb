people =
{
  "Alia O'Conner PhD" => {
         "phone" => "538.741.1841",
       "company" => "Leuschke-Stiedemann",
      "children" => [
          "Simone",
          "Cindy",
          "Jess"
      ]
  },
           "Ike Haag" => {
         "phone" => "(661) 663-8352",
       "company" => "Carter Inc",
      "children" => [
          "Joe",
          "Ofelia",
          "Deron"
      ]
  },
       "Brian Heller" => {
         "phone" => "1-288-601-5886",
       "company" => "O'Conner Group",
      "children" => [
          "Renee"
      ]
  },
       "Maryse Johns" => {
         "phone" => "218-571-8774",
       "company" => "Kuhlman Group",
      "children" => [
          "Domenick",
          "Trycia"
      ]
  },
  "Dr. Adela DuBuque" => {
        "phone" => "1-203-483-1226",
      "company" => "Heidenreich, Nitzsche and Dickinson"
  }
}

# Write Ruby code to find out the answers to the following questions:

puts "How many people are in people (excluding children)? => #{people.length}"
puts ""
puts "What are the names of all the people? => #{people.keys}"
puts ""
puts "What is the phone number of Alia O'Conner PhD? => #{people["Alia O'Conner PhD"]['phone']}"
puts ""
puts "How many children does Brian Heller have? => #{people["Brian Heller"]['children'].length}"
puts ""
puts "What company does Dr. Adela DuBuque work for? => #{people["Dr. Adela DuBuque"]['company']}"
puts ""
people_with_children = []
people_without_children = []
people.each do |person, value|
  if value.include?('children')
    people_with_children << person
  else
    people_without_children << person
  end
end

puts "What are the names of the people who have children? => #{people_with_children}"
puts ""
puts "What are the names of the people who do not have children? => #{people_without_children}"
puts ""
puts "What is Brian Heller's child's name? => #{people["Brian Heller"]['children']}"
puts ""
puts "What is Maryse Johns' first child's name? => #{people["Maryse Johns"]['children'][0]}"
puts ""
puts "Dr. Adela DuBuque just had a baby named Tomas. How would you update the hash for this information? => "
people["Dr. Adela DuBuque"]['children'] = "Tomas"
puts people["Dr. Adela DuBuque"]['children']
puts ""
sets_of_people =
[
  {
         "Bernard Feil" => {
             "phone" => "(880) 434-0630",
           "company" => "Maggio Inc",
          "children" => [
              "Nikki"
          ]
      },
          "Ruby Hessel" => {
             "phone" => "1-467-852-4981",
           "company" => "Kemmer Inc",
          "children" => [
              "Sydney"
          ]
      },
          "Savanah Toy" => {
             "phone" => "440-632-0287",
           "company" => "Hudson, Stehr and Lind",
          "children" => [
              "Garth"
          ]
      },
      "Casandra Kemmer" => {
            "phone" => "1-515-759-7470",
          "company" => "Davis, Bernier and Hermann"
      },
             "Edd Rath" => {
            "phone" => "(522) 829-3164",
          "company" => "Mosciski LLC"
      }
  },
  {
         "Dagmar Brakus" => {
             "phone" => "1-881-313-1173",
           "company" => "Mitchell, Schmitt and Haley",
          "children" => [
              "Reuben"
          ]
      },
         "Einar Effertz" => {
            "phone" => "(265) 857-5141",
          "company" => "Pfeffer, Klocko and Von"
      },
      "Dr. Sigrid Nader" => {
             "phone" => "707.762.7870",
           "company" => "Weissnat, Hayes and Dickinson",
          "children" => [
              "Israel",
              "Elyse",
              "Wilfredo"
          ]
      }
  }
]

# Write Ruby code to find out the answers to the following questions:
puts "How many people are in the first set of people? => #{sets_of_people[0].length}"
puts ""
puts "How many people are in the second set of people? => #{sets_of_people[1].length}"
puts ""
puts "What is Ruby Hessel's phone number? => #{sets_of_people[0]['Ruby Hessel']['phone']}"
puts ""
puts "What are the names of Dr. Sigrid Nader's children? => #{sets_of_people[1]['Dr. Sigrid Nader']['children']}"
puts ""
puts "What is Bernard Feil's child's name? => #{sets_of_people[0]['Bernard Feil']['children']}"
puts ""
puts "What company does Casandra Kemmer work for? => #{sets_of_people[0]['Casandra Kemmer']['company']}"
puts ""
puts "Who are all the people in the first set that have an `m` in their Company names? => "
puts ""
sets_of_people.each do |person, info|
  person.each do |category, data|
    if data.has_key?("company") && data['company'].downcase.include?("m")
      puts "#{category} => #{data['company']}"
    end
  end
end
