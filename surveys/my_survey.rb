# Let's build our own survey
my_survey = Survey::Survey.new do |survey|
  survey.name = "Star Wars Quiz" 
  survey.description = "The following questions are related with first movie of Star Wars"
  survey.attempts_number = 3
  survey.active = true
end

# Let's add some questions and options
question_1 = Survey::Question.new do |question|
  question.text = 'How many droids help Luke in the first movie?'
  # by default when we don't specify the weight of a option
  # its value is equal to one
  question.options = [
    Survey::Option.new(:text => '1 droid',  :correct => false),
    Survey::Option.new(:text => '2 droids', :correct => true),
    Survey::Option.new(:text => '3 droids', :correct => false)
  ]
end

question_2 = Survey::Question.new do |question|
  question.text = 'Who is the evil guy?'
  question.options = [
    Survey::Option.new(:text => 'Darth Vader', :weight => 100),
    Survey::Option.new(:text => 'Obi Wan',     :weight => 0),
    Survey::Option.new(:text => 'Jabba',       :weight => 50)
  ]
end

my_survey.questions = [question_1, question_2]
my_survey.save!
