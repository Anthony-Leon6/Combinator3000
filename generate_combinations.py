import itertools
import sys

def generate_combinations(number):
    digits = str(number)
    permutations = list(itertools.permutations(digits))
    combinations = [''.join(p) for p in permutations]
    combinations = list(set(combinations))  # Remove duplicates
    return combinations

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python generate_combinations.py <number>")
    else:
        number = sys.argv[1]
        combinations = generate_combinations(number)
        for combo in combinations:
            print(combo)
