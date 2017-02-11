require "active_record"

ActiveRecord::Base.establish_connection({
	database: "finatra.db",
	adapter:	"sqlite3"
})