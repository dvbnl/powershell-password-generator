
# Powershell Password Generator Function

This function generates random passwords with various options. It uses animal names and colors and can be expanded with random numbers, and symbols in the generated passwords.

## Usage

1. Make sure you use the required input files for colors and animal names. ( there are 2 folders inside the repository for English and Dutch words)
2. Call the function inside your script by running the `GeneratePassword` command.
3. Customize the output by using the provided switches `-IncludeNumbers` and `-IncludeSymbols` to include numbers and symbols, respectively.

The default output is a random colour, animal, single symbol and 4 numbers

```powershell
GeneratePassword -IncludeSymbols -IncludeNumbers
```

## Proof of Concept

When running the Function 5 times the following passwords are being generated:

```
GreenDog&7139
BlueTiger%4896
PinkHorse@3694
RedElephant$3178
YellowHorse$7263
WhiteDog@5218
RedCow@8524
WhiteLion!9068
```


## Author

Script authored by DVBNL.

Feel free to modify the content and structure of the Markdown file as needed.
