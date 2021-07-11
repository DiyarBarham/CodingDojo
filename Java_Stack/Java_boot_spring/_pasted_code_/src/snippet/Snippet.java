package snippet;

public class Snippet {
	<form:form action="/questions/new" method="post" modelAttribute="newQuest">
				 <div class="form-group">
			        <form:label path="question">Question</form:label>
			        <form:errors path="question"/>
			        <form:textarea class="form-control" path="question"></form:textarea>
			    </div>
			    <div class="form-group">
			        <form:label path="tags">Tags</form:label>
			        <form:input class="form-control" path="tags"/>
			    </div>
			    <button>Submit</button>
			</form:form>
}

