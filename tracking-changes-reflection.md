How does tracking and adding changes make developers' lives easier?
The journal entries of changed/added code show each update to the project with dates and what was changed in a subject line.  This allows tracking, streamlined review & reference points for a project.  Allows a team to work on different parts of the code at the same time.

What is a commit?
A commit is a file or change that has been pushed to the remote i.e. github repository. A commit will be identified by letters and numbers, have an author and date of the commit being added.  

What are the best practices for commit messages?
Commit with a message about what the commit/addition does to the branch. Should be wrote in present tense referring to what the commit does and not what it did or will do.

What does the HEAD^ argument mean?
It is referring to the latest files in the staging area waiting to be commited.  They are on the tip of the branch and will be added to the branch.  HEAD^ will undo the changes in the staging area.  Can have these commits removed with git reset --soft HEAD^ or HEAD~3 cmd.

What are the 3 stages of a git change and how do you move a file from one stage to the other?
Changes NOT staged for commit - git add <file> or git add .
Changes to be committed - git commit -m "Description" or git commit -v
Untracked files or new files - use git init to set up git repo around untracked files. 

Write a handy cheatsheet of the commands you need to commit your changes?
git add . - adds to staging area
git commit -m "......" - commits to origin OR git commit -v (add to README file)

What is a pull request and how do you create and merge one?
A pull request is comparing the master to the feature-branch
cmd line: git pull
git checkout -b feature-branch 
(add work)
git add
git commit -m "write desciption here"
git push origin feature-branch
git checkout master
git fetch origin master
git merge origin/master

Why are pull requests preferred when working with teams?
Teams will use this to review the branched code before adding/approving it for the master branch. This prevents bugs being added to master before double checking by other teammates.