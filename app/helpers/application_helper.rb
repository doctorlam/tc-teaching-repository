module ApplicationHelper
def entries_name
  scope = current_scopes.first 
  model = entries_scope_map[scope[0]]
  model.find(scope[1][0]).name
end 

def entries_scope_map
  {by_courses: Course}
end
def entries_topic
  scope = current_scopes.first 
  model = entries_topic_map[scope[0]]
  model.find(scope[1][0]).name
end 

def entries_topic_map
  {by_topics: Topic}
end



end 
