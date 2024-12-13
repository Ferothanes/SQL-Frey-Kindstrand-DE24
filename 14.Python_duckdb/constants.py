from pathlib import Path 

# __file__ - dunder file
# absolute path to constants.property
#/"data" --> concatenate with "data"
# / operator works here because of operator overloading and polymorphism 

#data path
DATA_PATH = Path(__file__).parent / "data"
#database path
DATABASE_PATH = Path(__file__).parent / "goteborgs_stad.db"

print(DATA_PATH)