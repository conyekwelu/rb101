# Madlibs
# Mad libs are a simple game where you create a story template with blanks for words. You, or another player, then construct a list of words and place them into the story, creating an often silly or funny story as a result.
#
# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

def madlibs
  print "Enter a noun: "
  noun = gets.chomp.downcase
  print "Enter a verb: "
  verb = gets.chomp.downcase
  print "Enter a adjective: "
  adjective = gets.chomp.downcase
  print "Enter a adverb: "
  adverb = gets.chomp.downcase

  sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
  sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
  sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

  puts [sentence_1, sentence_2, sentence_3].sample
end

madlibs()
