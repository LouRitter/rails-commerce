module StoreHelper

  def session_counter(count)
    if count > 5 
      "You have been on this page #{pluralize(count, "time")}"
    end
  end
end
