Case.destroy_all

Case.create!([{
  title: "The Whistle-Blower",
  abstract: "Research assistant blows whistle on supervisor.",
  year: "1999"
},

{
  title: "Immigration woe",
  abstract: "Student stuck in bad TA position due to immigration status,
              overworked and underpaid",
  year: "2016"
}])



p "Created #{Case.count} cases"
