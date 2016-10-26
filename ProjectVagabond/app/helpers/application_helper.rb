module ApplicationHelper
	def get_user(user_id)
		return User.find(user_id)
	end

	def get_city(post_id)
		return Post.find(post_id).city_id
	end
end
