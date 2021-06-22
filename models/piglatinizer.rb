class PigLatinizer

    def piglatinize(phrase)
        phrase.split(" ").map {|string| translate_word(string)}.join(" ")
    end

    def translate_word(string)
        vowels = %w(a e i o u A E I O U)
        arr = string.split("")
        if vowels.include?(arr[0])
            arr.push("w","a","y")
        else
            arr << arr.shift until vowels.include?(arr[0])
            arr.push("a","y")
        end
        arr.join
    end
end