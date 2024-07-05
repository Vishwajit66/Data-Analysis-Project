def hello_world():
    print('Hello, world!')

def calculate_average(numbers):
    """
    Calculate the average of a list of numbers.
    
    Parameters:
    numbers (list): A list of numbers.
    
    Returns:
    float: The average of the numbers.
    """
    if not numbers:
        return 0
    return sum(numbers) / len(numbers)

# Example usage
numbers = [10, 20, 30, 40, 50]
average = calculate_average(numbers)
print(f"The average of {numbers} is {average}")

hello_world()
