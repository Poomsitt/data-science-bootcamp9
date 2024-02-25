class DataAnlysis:
    def __init__(self, name, work_period, program,salary):
        self.name = name
        self.work_period = work_period
        self.program = program
        self.salary = salary
    def increase_work_year(self, year):
        self.work_period += year
        print(f"Work period increase {year} year")
        print(f"Your work period is {self.work_period}")

    def increase_salary(self, year):
        self.salary += 1500*year
        print(self.salary)

    def increase_skill(self, skill):
        self.program += skill
        print(f"I am learning new {skill}")





emp01 = DataAnlysis("Poomsit",3, "python",30000)
emp02 = DataAnlysis("Mook",6,"SQL",30000)
emp03 = DataAnlysis("Petch",2,"Excel",30000)
