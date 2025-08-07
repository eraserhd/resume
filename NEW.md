This is a repository of customized resumes and supporting information.

Aside from resume.tex, which is special, every resume is generated from a `<name>.tex`,
which is customized from the `<name>.txt` with the same basename which contains the
text of the job posting.

To create a new .tex file, read the .txt file, and other .tex files, and match the
patterns:

* Pick at most eight relevant skills mentioned in the job posting.
* The goal is to pass the keyword bot and make it obvious to a human that I meet requirements, not necessarily to fill all eight slots.
* Try to keep the language similar enough that keyword bots and non-technical HR people will recognize they are the same thing, however...
* Try to keep the wording short enough that it won't break the sidebar formatting.
* The second argument in the `\relevantskill` macro is a list of shapes to connect to with arrows.
* You can read `resume.tex` to find the shapes, and you can use existing .tex files to
* It's OK to list a skill that has justification in the resume if there's no shapes for it.  It will just become a bullet.
* Do not list any skills I can't justify.
* You can connect a skill to a shape if I've done it in the past (another .tex file), or if the achievement in resume.tex demonstrates it.

