How does tracking and adding changes make developers' lives easier?
	-It makes likes easier by allowing developers a way to not only see what changes were made but to go back to an old version of the code by using a commit.
What is a commit?
	-A commit is basically a version of your project.  It is a snapshot of what your project looked like at the time the commit was made, allowing one to go back to this version of the project if necessary.
What are the best practices for commit messages?
	-Always present commit messages as if those are the changes that will be made to your project if you apply that commit.  In other words don't use past tense (changed the color).  Instead phrase it in more of a present tense (change the color).
What does the HEAD^ argument mean?
	-It means the previous commit that was made.
What are the 3 stages of a git change and how do you move a file from one stage to the other?
	-The first stage is directly after one has made changes.  The second stage is using the "git add" command to stage these changes.  Basically an intermediate step between making the changes and making those changes permanent.  The third stage is using the "git commit" command to make the changes permanent and create a commit you can browse later.
Write a handy cheatsheet of the commands you need to commit your changes. < not a question as the website seems to think
	-git add 
	-git commit -m "commit notes"
What is a pull request and how do you create and merge one?
	-First you push your changes onto GitHub using the command line.  Then navigate to your repository in GitHub where you should be able to see the changes you just pushed and button to initiate the pull request.  Push it and add a description and then confirm to complete the pull request.  You should then be on a page with a Merge pull request button.  Push it and comfirm the merge.
Why are pull requests preferred when working with teams?
	-This is preffered because after making a pull request you have staged you changes on GitHub for someone else on the team to review before merging those changes permanently.