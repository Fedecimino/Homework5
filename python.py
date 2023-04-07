class NotEnoughLettersException(Exception):
    pass

def most_common_letters(sentence):
    letter_counts = {}
    for letter in sentence:
        if letter != ' ':
            letter_counts[letter] = letter_counts.get(letter, 0) + 1

    if len(letter_counts) < 3:
        raise NotEnoughLettersException("Not enough unique letters to return top 3.")

    sorted_counts = sorted(letter_counts.items(), key=lambda x: x[1], reverse=True)
    return [pair[0] for pair in sorted_counts[:3]]


sentence = "Write a function that takes in a sentence and returns the 3 most common letters."
try:
    top_letters = most_common_letters(sentence)
    print(top_letters)
except NotEnoughLettersException as e:
    print(e)