require "mscorlib"
require "System.Collections.Generic, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
require "System, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"

class GlobalMembers
	def initialize()
		##pragma warning(disable: 4786)
		@MAX_RESP = 3
		# make a  search for the  user's input 
		# inside the database of the program 
		@KnowledgeBase = record.new("WHAT IS YOUR NAME""MY NAME IS CHATTERBOT2.", "YOU CAN CALL ME CHATTERBOT2.", "WHY DO YOU WANT TO KNOW MY NAME?", "HI", "HI THERE!""HOW ARE YOU?""HI!""HOW ARE YOU""I'M DOING FINE!""I'M DOING WELL AND YOU?""WHY DO YOU WANT TO KNOW HOW AM I DOING?""WHO ARE YOU""I'M AN A.I PROGRAM.""I THINK THAT YOU KNOW WHO I'M.""WHY ARE YOU ASKING?""ARE YOU INTELLIGENT""YES,OFCORSE.""WHAT DO YOU THINK?""ACTUALY,I'M VERY INTELLIGENT!""ARE YOU REAL""DOES THAT QUESTION REALLY MATERS TO YOU?""WHAT DO YOU MEAN BY THAT?""I'M AS REAL AS I CAN BE.")
	end

	def GlobalMembers.find_match(input)
		result = List[System::String].new()
		i = 0
		while i < nKnowledgeBaseSize
			if (@KnowledgeBase[i].input) == input then
				GlobalMembers.copy(@KnowledgeBase[i].responses, result)
				return result
			end
			i += 1
		end
		return result
	end

	def GlobalMembers.copy(array, v)
		i = 0
		while i < @MAX_RESP
			v.Add(array[i])
			i += 1
		end
	end
end
