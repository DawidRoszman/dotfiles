import sys
import pyperclip

user_input = sys.argv

if len(user_input) < 4:
    print("Usage: python main.py <branch/pr> <feature/fix> <name_of_task>")
    sys.exit(1)

def convert_to_commit(task: list[str]) -> str:
    return " ".join(task).replace(" ", "-").replace("[", "").replace("]","").lower()

def convert_to_pr(task: list[str]) -> str:
    return task[0].replace("[", "").replace("]", "")+" ".join(task[1:])

branch = user_input[2]+"/"+convert_to_commit(user_input[3:])
pr_name = (user_input[2].upper()+"-"+convert_to_pr(user_input[3:])).replace(" ", ": ", 1)
if(user_input[1] == "pr"):
    pyperclip.copy(pr_name)
else:
    pyperclip.copy(branch)
print(branch)
print(pr_name)
    
