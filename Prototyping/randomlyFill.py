import csv
import faker

# Column used in the Database
header = ["ID", "Address1", "Address2", "Address3", "Address4", "City", "City2", "Company", "Country", "Department",
          "Email", "Fax Phone", "First Name", "Group", "Circulate", "Alt", "Alt Phone", "ID/Statue", "Mobile Phone",
          "Name Prefix", "Personal Email", "Phone", "Postcode", "Postcode2", "Spouse", "State", "State2", "Surname",
          "Title", "Web Site", "Notes", "PA"]

# Library to randaom generate values
fake = faker.Faker('en_AU')

# enerate 50 random data
num_entries = 50
data = []
for id_num in range(1, num_entries + 1):
    entry = [id_num]  # ID
    entry.extend([fake.address() for _ in range(4)])  # Address1 to Address4
    entry.extend([fake.city() for _ in range(2)])  # City, City2
    entry.append(fake.company())  # Company
    entry.append(fake.country())  # Country
    entry.append(fake.job())  # Department
    entry.append(fake.email())  # Email
    entry.append(fake.phone_number())  # Fax Phone
    entry.append(fake.first_name())  # First Name
    entry.append(fake.random_element(elements=("A", "B", "C")))  # Group
    entry.append(fake.random_element(elements=("Yes", "No")))  # Circulate
    entry.append(fake.random_element(elements=("A", "B", "C")))  # Alt
    entry.append(fake.phone_number())  # Alt Phone
    entry.append(fake.random_int(min=1000, max=9999))  # ID/Statue
    entry.append(fake.phone_number())  # Mobile Phone
    entry.append(fake.prefix())  # Name Prefix
    entry.append(fake.email())  # Personal Email
    entry.append(fake.phone_number())  # Phone
    entry.append(fake.postcode())  # Postcode
    entry.append(fake.postcode())  # Postcode2
    entry.append(fake.first_name_female())  # Spouse
    entry.append(fake.state())  # State
    entry.append(fake.state())  # State2
    entry.append(fake.last_name())  # Surname
    entry.append(fake.random_element(elements=("Mr.", "Mrs.", "Dr.")))  # Title
    entry.append(fake.url())  # Web Site
    entry.append(fake.text(max_nb_chars=50))  # Notes
    entry.append(fake.random_element(elements=("A", "B", "C")))  # PA
    
    data.append(entry)

# Write data to CSV file
output_file = "random_data.csv"
with open(output_file, mode="w", newline="") as file:
    writer = csv.writer(file)
    writer.writerow(header)
    writer.writerows(data)

print(f"Generated {num_entries} entries and saved to '{output_file}'.")
