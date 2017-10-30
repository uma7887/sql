/* to display questions and answers*/

select UserQuestion.QuestionID,UserQuestion.Question,UserQuestion.QuestionLike,UserQuestion.QuestionTechnology,UserQuestion.QuestionTime,UserSolution.Solution, UserSolution.SolutionLike,UserSolution.SolutionLike, UserSolution.SolutionTime, LoginUserDetail.UserName
from ((UserQuestion

join UserSolution on UserQuestion.QuestionID = UserSolution.SolutionQuestionIDFK)
join LoginUserDetail on UserSolution.SolutioUserIDFK = LoginUserDetail.UserID);

