osd_duration = 10   -- messages duration
osd_position = "top-left"

--this is the discription of the plugin
function descriptor()
    return {
        title = "Open Source";
        version = "0.1";
        author = "saksham";
        shortdesc = "Subtitle generator";
        capabilities = {"input-listener"}
    }
end



function activate()
    film= vlc.input.item():uri()
    film= vlc.strings.decode_uri( film )
    --when plugin is started this activate function works first
	 callfxn--it calls the function to perform some job
end



function deactivate()
--performs some work when plugin is deactivated
end



function close()
   --this performs the work of unticking the plugin,it will show that plugin is closed but every instance is closed on calling deactivate function
    vlc.deactivate()
end



function callfxn()
         vlc.osd.message("Working successfully", channel1,"bottom", osd_duration*1000*1000)--this displays the message "Working successfully" on the vlc screen
		
    end
