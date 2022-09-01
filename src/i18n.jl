export AbstractLanguage, set_language!
abstract type AbstractLanguage end




abstract type English  <: AbstractLanguage end
struct EnglishUS <: English end

# computational_thinking.jl
hint_str(lang::Lang) where {Lang <: English} = "Hint"
tip_str(lang::Lang) where {Lang <: English} = "Tip"
protip_invite_str(lang::Lang) where {Lang <: English} = "Curious to learn more?"
protip_boxlabel_str(lang::Lang) where {Lang <: English} = "Pro Tip"
almost_str(lang::Lang) where {Lang <: English} = "Almost there!"
warning_box_str(lang::Lang) where {Lang <: English} = "Warning:"
danger_str(lang::Lang) where {Lang <: English} = "Beware!"
still_missing_str(lang::Lang) where {Lang <: English} = "Missing Response"
still_missing_text_str(lang::Lang) where {Lang <: English} = md"Replace `missing` with your answer."
still_nothing_str(lang::Lang) where {Lang <: English} = "Here we go!"
still_nothing_text_str(lang::Lang) where {Lang <: English} = md"Replace `nothing` with your answer."
wrong_type_str(lang::Lang) where {Lang <: English} = "Type Error"
wrong_type_text_str(lang::Lang) where {Lang <: English} = md"Check the type of your response."
wrong_type_text_str(lang::Lang, var, type) where {Lang <: English} = md"The type of $var should be $type"
func_not_defined_str(lang::Lang) where {Lang <: English} = "Oopsie!"
func_not_defined_text_str(lang::Lang, func_name) where {Lang <: English} = md"Make sure that you define a function called **$(Markdown.Code(string(func_name)))**"
var_not_defined_str(lang::Lang) where {Lang <: English} = "Oopsie!"
var_not_defined_text_str(lang::Lang, variable_name) where {Lang <: English} = md"Make sure that you define a variable called **$(Markdown.Code(string(variable_name)))**"
keep_working_str(lang::Lang) where {Lang <: English} = "Keep working on it!"
keep_working_text_str(lang::Lang) where {Lang <: English} = md"The answer is not quite right."
keep_working_update_str(lang::Lang) where {Lang <: English} = md"Make sure to update the cell setting $var."
yays(lang::Lang) where {Lang <: English} = [md"Great!", md"Yay ❤", md"Great! 🎉", md"Well done!", md"Keep it up!", md"Good job!", md"Awesome!", md"You got the right answer!", md"Let's move on to the next part."];
correct_str(lang::Lang) where {Lang <: English} = "Got it!"

check_type_isa_missing_text_str(sym, lang::Lang) where {Lang <: English} = md"The variable \$sym is still set to missing."
check_type_isa_wrong_type_text_str(sym, lang::Lang) where {Lang <: English} = "The type of \$sym is not correct.  It should be <: "
check_type_isa_wrong_type_one_of_text_str(lang::Lang) where {Lang <: English} = "one of"
check_type_isa_wrong_type_or_text_str(lang::Lang) where {Lang <: English} = "or"
check_type_isa_not_missing_text_str(sym, lang::Lang) where {Lang <: English} = md"\$sym has the correct type."
check_type_isa_type_error_str(sym, lang::Lang) where {Lang <: English} = "Type Error"

check_type_eq_missing_text_str(sym, lang::Lang) where {Lang <: English} = md"The variable \$sym is still set to missing."
check_type_eq_wrong_type_single_text_str(sym, type, lang::Lang) where {Lang <: English} = "The type of \$sym should be \$type."
check_type_eq_wrong_type_multi_text_str(sym, lang::Lang) where {Lang <: English} = "The type of \$sym should be one of "
check_type_eq_type_error_str(lang::Lang) where {Lang <: English} = "Type Error"
check_type_eq_correct_str(sym, lang::Lang) where {Lang <: English} = md"\$sym has the correct type."

# other.jl
full_width_mode_str(lang::Lang) where {Lang <: English} = "Full Width Mode"

# present.jl
present_str(lang::Lang) where {Lang <: English} = "present"
present_mode_str(lang::Lang) where {Lang <: English} = "Present Mode"

default_language = Ref{AbstractLanguage}(EnglishUS())
function set_language!(lang::AbstractLanguage)
    global default_language[] = lang
end
