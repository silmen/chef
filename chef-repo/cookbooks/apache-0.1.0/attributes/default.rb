default["apache"]["sites"]["silmen2"] = { "title_site" => "silmen2", "port" => 80, "domain" => "silmen2.mylabserver.com" }
default["apache"]["sites"]["silmen2b"] = { "title_site" => "silmen2b", "port" => 80, "domain" => "silmen2b.mylabserver.com" }
default["apache"]["sites"]["silmen3"] = { "title_site" => "silmen3", "port" => 80, "domain" => "silmen3.mylabserver.com" }
default["apache"]["sites"]["silmen3b"] = { "title_site" => "silmen3b", "port" => 80, "domain" => "silmen3b.mylabserver.com" }

default["author"]["name"] = "Silvia"
case node["platform"]
when "centos"
	default["apache"]["package"] = "httpd"
when "ubuntu"
	default["apache"]["package"] = "apache2"
	end

