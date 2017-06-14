Case.destroy_all
Author.destroy_all

@author_one = Author.create(first_name: 'Peggy', last_name: 'Connolley')
@author_two = Author.create(first_name: 'Bob', last_name: 'Ladenson')
Case.create!([{
  title: "The Whistle-Blower",
  abstract: "Research assistant blows whistle on supervisor.",
  year: "1999"
  authors: [@author_one]
},

{
  title: "Immigration woe",
  abstract: "Student stuck in bad TA position due to immigration status,
              overworked and underpaid",
  year: "2016"
  authors: [
            Author.create (first_name: 'Vivian', last_name: 'Weil'),
            Author.create (first_name: 'Michael', last_name: 'Davis')
            ]
}])



p "Created #{Case.count} cases"
