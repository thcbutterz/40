--[[

Rail Cart elevator monitor By Jonnathon Clayton (AKA THC Butterz) V2.0.0
Note: For a great comptercraft controlled elevator check out Ominous Penguin's tutorial here:  
https://www.youtube.com/watch?v=OiMmMBS5e_s#t=756

Special Thanks and Credit: 
Credit to ben657 for his config file API
Special thanks to Ominous Penguin for tips and coding advice.

-- Maximum of 16 floors, floors must have unique color wire
-- Floors must be wired in color order per Color API
-- Refer to the Color API here:  http://computercraft.info/wiki/Colors_%28API%29
-- floor 1 = white, floor 2 = orange, floor 16 = black etc...

--]]


-- Start Program
os.loadAPI("req/config")
fs.delete("/req/github")
fs.delete("github")
fs.delete("/req/menuApi")
fs.delete("/req/wget")
fs.delete("/setupParts")
fs.delete("/setup")
fs.delete("/setup2")
fs.delete("/downloads")
fs.delete("/req/req")
fs.delete("/configs/configs")

while true do

config.load("configs","server")
	
	-- Variables modify to your needs
	
	-- Set number of floors up to 16
	floors = tonumber(config.readVal("floors"))
	-- Set monitor background color in decimal
	background = tonumber(config.readVal("bcol"))
	-- Set monitor text color in decimal
	text = tonumber(config.readVal("tcol"))
	-- Set monitor text scale
	scale = tonumber(config.readVal("scal"))
	-- Set the side the sensors are connected too
	sensors = "bottom"
	-- Set floor names every floor you have must be named
	Floor_1 = config.readVal("f1")
	Floor_2 = config.readVal("f2")
	Floor_3 = config.readVal("f3")
	Floor_4 = config.readVal("f4")
	Floor_5 = config.readVal("f5")
	Floor_6 = config.readVal("f6")
	Floor_7 = config.readVal("f7")
	Floor_8 = config.readVal("f8")
	Floor_9 = config.readVal("f9")
	Floor_10 = config.readVal("f10")
	Floor_11 = config.readVal("f11")
	Floor_12 = config.readVal("f12")
	Floor_13 = config.readVal("f13")
	Floor_14 = config.readVal("f14")
	Floor_15 = config.readVal("f15")
	Floor_16 = config.readVal("f16")
	
	-- Connect Monitors every floor must have a monitor (use your brain here)
	f1 = peripheral.wrap('monitor_'..config.readVal("m1"))
	f2 = peripheral.wrap('monitor_'..config.readVal("m2"))
	f3 = peripheral.wrap('monitor_'..config.readVal("m3"))
	f4 = peripheral.wrap('monitor_'..config.readVal("m4"))
	f5 = peripheral.wrap('monitor_'..config.readVal("m5"))
	f6 = peripheral.wrap('monitor_'..config.readVal("m6"))
	f7 = peripheral.wrap('monitor_'..config.readVal("m7"))
	f8 = peripheral.wrap('monitor_'..config.readVal("m8"))
	f9 = peripheral.wrap('monitor_'..config.readVal("m9"))
	f10 = peripheral.wrap('monitor_'..config.readVal("m10"))
	f11 = peripheral.wrap('monitor_'..config.readVal("m11"))
	f12 = peripheral.wrap('monitor_'..config.readVal("m12"))
	f13 = peripheral.wrap('monitor_'..config.readVal("m13"))
	f14 = peripheral.wrap('monitor_'..config.readVal("m14"))
	f15 = peripheral.wrap('monitor_'..config.readVal("m15"))
	f16 = peripheral.wrap('monitor_'..config.readVal("m16"))
	
	-- monitor static text
	line_1 = "Cart Is"
	line_2 = "Currently"
	line_3 = "on"
	line_5 = "Floor ="
	
	-- End of variables  no user input beyond this point
	
	-- Connect Sensors
	redstone = peripheral.wrap(sensors)
	rs = redstone
	
	-- Clear The Computer Screen
	term.clear()
	
	-- Set up the monitors
	if floors >= 1 then
		f1.setBackgroundColor(background)
		f1.setTextColor(text)
		f1.setTextScale(scale)
		f1.clear()
		f1.setCursorPos(1, 1)
		f1.write(line_1)
		f1.setCursorPos(1, 2)
		f1.write(line_2)
		f1.setCursorPos(1, 3)
		f1.write(line_3)
		f1.setCursorPos(1, 5)
		f1.write(line_5)
		f1.setCursorPos(1, 6)
	end
	
	if floors >= 2 then
		f2.setBackgroundColor(background)
		f2.setTextColor(text)
		f2.setTextScale(scale)
		f2.clear()
		f2.setCursorPos(1, 1)
		f2.write(line_1)
		f2.setCursorPos(1, 2)
		f2.write(line_2)
		f2.setCursorPos(1, 3)
		f2.write(line_3)
		f2.setCursorPos(1, 5)
		f2.write(line_5)
		f2.setCursorPos(1, 6)
	end
	
	if floors >= 3 then
		f3.setBackgroundColor(background)
		f3.setTextColor(text)
		f3.setTextScale(scale)
		f3.clear()
		f3.setCursorPos(1, 1)
		f3.write(line_1)
		f3.setCursorPos(1, 2)
		f3.write(line_2)
		f3.setCursorPos(1, 3)
		f3.write(line_3)
		f3.setCursorPos(1, 5)
		f3.write(line_5)
		f3.setCursorPos(1, 6)
	end
	
	if floors >= 4 then
		f4.setBackgroundColor(background)
		f4.setTextColor(text)
		f4.setTextScale(scale)
		f4.clear()
		f4.setCursorPos(1, 1)
		f4.write(line_1)
		f4.setCursorPos(1, 2)
		f4.write(line_2)
		f4.setCursorPos(1, 3)
		f4.write(line_3)
		f4.setCursorPos(1, 5)
		f4.write(line_5)
		f4.setCursorPos(1, 6)
	end
	
	if floors >= 5 then
		f5.setBackgroundColor(background)
		f5.setTextColor(text)
		f5.setTextScale(scale)
		f5.clear()
		f5.setCursorPos(1, 1)
		f5.write(line_1)
		f5.setCursorPos(1, 2)
		f5.write(line_2)
		f5.setCursorPos(1, 3)
		f5.write(line_3)
		f5.setCursorPos(1, 5)
		f5.write(line_5)
		f5.setCursorPos(1, 6)
	end
	
	if floors >= 6 then
		f6.setBackgroundColor(background)
		f6.setTextColor(text)
		f6.setTextScale(scale)
		f6.clear()
		f6.setCursorPos(1, 1)
		f6.write(line_1)
		f6.setCursorPos(1, 2)
		f6.write(line_2)
		f6.setCursorPos(1, 3)
		f6.write(line_3)
		f6.setCursorPos(1, 5)
		f6.write(line_5)
		f6.setCursorPos(1, 6)
	end
	
	if floors >= 7 then
		f7.setBackgroundColor(background)
		f7.setTextColor(text)
		f7.setTextScale(scale)
		f7.clear()
		f7.setCursorPos(1, 1)
		f7.write(line_1)
		f7.setCursorPos(1, 2)
		f7.write(line_2)
		f7.setCursorPos(1, 3)
		f7.write(line_3)
		f7.setCursorPos(1, 5)
		f7.write(line_5)
		f7.setCursorPos(1, 6)
	end
	
	if floors >= 8 then
		f8.setBackgroundColor(background)
		f8.setTextColor(text)
		f8.setTextScale(scale)
		f8.clear()
		f8.setCursorPos(1, 1)
		f8.write(line_1)
		f8.setCursorPos(1, 2)
		f8.write(line_2)
		f8.setCursorPos(1, 3)
		f8.write(line_3)
		f8.setCursorPos(1, 5)
		f8.write(line_5)
		f8.setCursorPos(1, 6)
	end
	
	if floors >= 9 then
		f9.setBackgroundColor(background)
		f9.setTextColor(text)
		f9.setTextScale(scale)
		f9.clear()
		f9.setCursorPos(1, 1)
		f9.write(line_1)
		f9.setCursorPos(1, 2)
		f9.write(line_2)
		f9.setCursorPos(1, 3)
		f9.write(line_3)
		f9.setCursorPos(1, 5)
		f9.write(line_5)
		f9.setCursorPos(1, 6)
	end
	
	if floors >= 10 then
		f10.setBackgroundColor(background)
		f10.setTextColor(text)
		f10.setTextScale(scale)
		f10.clear()
		f10.setCursorPos(1, 1)
		f10.write(line_1)
		f10.setCursorPos(1, 2)
		f10.write(line_2)
		f10.setCursorPos(1, 3)
		f10.write(line_3)
		f10.setCursorPos(1, 5)
		f10.write(line_5)
		f10.setCursorPos(1, 6)
	end
	
	if floors >= 11 then
		f11.setBackgroundColor(background)
		f11.setTextColor(text)
		f11.setTextScale(scale)
		f11.clear()
		f11.setCursorPos(1, 1)
		f11.write(line_1)
		f11.setCursorPos(1, 2)
		f11.write(line_2)
		f11.setCursorPos(1, 3)
		f11.write(line_3)
		f11.setCursorPos(1, 5)
		f11.write(line_5)
		f11.setCursorPos(1, 6)
	end
	
	if floors >= 12 then
		f12.setBackgroundColor(background)
		f12.setTextColor(text)
		f12.setTextScale(scale)
		f12.clear()
		f12.setCursorPos(1, 1)
		f12.write(line_1)
		f12.setCursorPos(1, 2)
		f12.write(line_2)
		f12.setCursorPos(1, 3)
		f12.write(line_3)
		f12.setCursorPos(1, 5)
		f12.write(line_5)
		f12.setCursorPos(1, 6)
	end
	
	if floors >= 13 then
		f13.setBackgroundColor(background)
		f13.setTextColor(text)
		f13.setTextScale(scale)
		f13.clear()
		f13.setCursorPos(1, 1)
		f13.write(line_1)
		f13.setCursorPos(1, 2)
		f13.write(line_2)
		f13.setCursorPos(1, 3)
		f13.write(line_3)
		f13.setCursorPos(1, 5)
		f13.write(line_5)
		f13.setCursorPos(1, 6)
	end
	
	if floors >= 14 then
		f14.setBackgroundColor(background)
		f14.setTextColor(text)
		f14.setTextScale(scale)
		f14.clear()
		f14.setCursorPos(1, 1)
		f14.write(line_1)
		f14.setCursorPos(1, 2)
		f14.write(line_2)
		f14.setCursorPos(1, 3)
		f14.write(line_3)
		f14.setCursorPos(1, 5)
		f14.write(line_5)
		f14.setCursorPos(1, 6)
	end
	
	if floors >= 15 then
		f15.setBackgroundColor(background)
		f15.setTextColor(text)
		f15.setTextScale(scale)
		f15.clear()
		f15.setCursorPos(1, 1)
		f15.write(line_1)
		f15.setCursorPos(1, 2)
		f15.write(line_2)
		f15.setCursorPos(1, 3)
		f15.write(line_3)
		f15.setCursorPos(1, 5)
		f15.write(line_5)
		f15.setCursorPos(1, 6)
	end
	
	if floors >= 16 then
		f16.setBackgroundColor(background)
		f16.setTextColor(text)
		f16.setTextScale(scale)
		f16.clear()
		f16.setCursorPos(1, 1)
		f16.write(line_1)
		f16.setCursorPos(1, 2)
		f16.write(line_2)
		f16.setCursorPos(1, 3)
		f16.write(line_3)
		f16.setCursorPos(1, 5)
		f16.write(line_5)
		f16.setCursorPos(1, 6)
	end

	-- Set computer cursor position
	term.setCursorPos(1, 1)
	
	-- Line 1 on computer
	print("Server Butterz OS V1.0")
	
	-- Set computer cursor position
	term.setCursorPos(1, 2)
	
	-- testing the connection
	test = rs.getBundledInput(sensors)
	
	-- Line 2 on computer
	print("floors = ", floors)
		
	-- Set computer cursor position
	term.setCursorPos(1, 3)
		
		-- Floor 1 logic
		if test == 1 then
			print(Floor_1)
			if floors >= 1 then
				f1.write(Floor_1)
			end
			if floors >= 2 then
				f2.write(Floor_1)
			end
			if floors >= 3 then
				f3.write(Floor_1)
			end
			if floors >= 4 then
				f4.write(Floor_1)
			end
			if floors >= 5 then
				f5.write(Floor_1)
			end
			if floors >= 6 then
				f6.write(Floor_1)
			end
			if floors >= 7 then
				f7.write(Floor_1)
			end
			if floors >= 8 then
				f8.write(Floor_1)
			end
			if floors >= 9 then
				f9.write(Floor_1)
			end
			if floors >= 10 then
				f10.write(Floor_1)
			end
			if floors >= 11 then
				f11.write(Floor_1)
			end
			if floors >= 12 then
				f12.write(Floor_1)
			end
			if floors >= 13 then
				f13.write(Floor_1)
			end
			if floors >= 14 then
				f14.write(Floor_1)
			end
			if floors >= 15 then
				f15.write(Floor_1)
			end
			if floors >= 16 then
				f16.write(Floor_1)
			end
		end
		
		-- Floor 2 logic
		if test == 2 then
			print(Floor_2)
			if floors >= 1 then
				f1.write(Floor_2)
			end
			if floors >= 2 then
				f2.write(Floor_2)
			end
			if floors >= 3 then
				f3.write(Floor_2)
			end
			if floors >= 4 then
				f4.write(Floor_2)
			end
			if floors >= 5 then
				f5.write(Floor_2)
			end
			if floors >= 6 then
				f6.write(Floor_2)
			end
			if floors >= 7 then
				f7.write(Floor_2)
			end
			if floors >= 8 then
				f8.write(Floor_2)
			end
			if floors >= 9 then
				f9.write(Floor_2)
			end
			if floors >= 10 then
				f10.write(Floor_2)
			end
			if floors >= 11 then
				f11.write(Floor_2)
			end
			if floors >= 12 then
				f12.write(Floor_2)
			end
			if floors >= 13 then
				f13.write(Floor_2)
			end
			if floors >= 14 then
				f14.write(Floor_2)
			end
			if floors >= 15 then
				f15.write(Floor_2)
			end
			if floors >= 16 then
				f16.write(Floor_2)
			end
		end
		
		-- Floor 3 logic
		if test == 4 then
			print(Floor_3)
			if floors >= 1 then
				f1.write(Floor_3)
			end
			if floors >= 2 then
				f2.write(Floor_3)
			end
			if floors >= 3 then
				f3.write(Floor_3)
			end
			if floors >= 4 then
				f4.write(Floor_3)
			end
			if floors >= 5 then
				f5.write(Floor_3)
			end
			if floors >= 6 then
				f6.write(Floor_3)
			end
			if floors >= 7 then
				f7.write(Floor_3)
			end
			if floors >= 8 then
				f8.write(Floor_3)
			end
			if floors >= 9 then
				f9.write(Floor_3)
			end
			if floors >= 10 then
				f10.write(Floor_3)
			end
			if floors >= 11 then
				f11.write(Floor_3)
			end
			if floors >= 12 then
				f12.write(Floor_3)
			end
			if floors >= 13 then
				f13.write(Floor_3)
			end
			if floors >= 14 then
				f14.write(Floor_3)
			end
			if floors >= 15 then
				f15.write(Floor_3)
			end
			if floors >= 16 then
				f16.write(Floor_3)
			end
		end
		
		--Floor 4 logic
		if test == 8 then
			print(Floor_4)
			if floors >= 1 then
				f1.write(Floor_4)
			end
			if floors >= 2 then
				f2.write(Floor_4)
			end
			if floors >= 3 then
				f3.write(Floor_4)
			end
			if floors >= 4 then
				f4.write(Floor_4)
			end
			if floors >= 5 then
				f5.write(Floor_4)
			end
			if floors >= 6 then
				f6.write(Floor_4)
			end
			if floors >= 7 then
				f7.write(Floor_4)
			end
			if floors >= 8 then
				f8.write(Floor_4)
			end
			if floors >= 9 then
				f9.write(Floor_4)
			end
			if floors >= 10 then
				f10.write(Floor_4)
			end
			if floors >= 11 then
				f11.write(Floor_4)
			end
			if floors >= 12 then
				f12.write(Floor_4)
			end
			if floors >= 13 then
				f13.write(Floor_4)
			end
			if floors >= 14 then
				f14.write(Floor_4)
			end
			if floors >= 15 then
				f15.write(Floor_4)
			end
			if floors >= 16 then
				f16.write(Floor_4)
			end
		end
		
		--Floor 5 logic
		if test == 16 then
			print(Floor_5)
			if floors >= 1 then
				f1.write(Floor_5)
			end
			if floors >= 2 then
				f2.write(Floor_5)
			end
			if floors >= 3 then
				f3.write(Floor_5)
			end
			if floors >= 4 then
				f4.write(Floor_5)
			end
			if floors >= 5 then
				f5.write(Floor_5)
			end
			if floors >= 6 then
				f6.write(Floor_5)
			end
			if floors >= 7 then
				f7.write(Floor_5)
			end
			if floors >= 8 then
				f8.write(Floor_5)
			end
			if floors >= 9 then
				f9.write(Floor_5)
			end
			if floors >= 10 then
				f10.write(Floor_5)
			end
			if floors >= 11 then
				f11.write(Floor_5)
			end
			if floors >= 12 then
				f12.write(Floor_5)
			end
			if floors >= 13 then
				f13.write(Floor_5)
			end
			if floors >= 14 then
				f14.write(Floor_5)
			end
			if floors >= 15 then
				f15.write(Floor_5)
			end
			if floors >= 16 then
				f16.write(Floor_5)
			end
		end
		
		--Floor 6
		if test == 32 then
			print(Floor_6)
			if floors >= 1 then
				f1.write(Floor_6)
			end
			if floors >= 2 then
				f2.write(Floor_6)
			end
			if floors >= 3 then
				f3.write(Floor_6)
			end
			if floors >= 4 then
				f4.write(Floor_6)
			end
			if floors >= 5 then
				f5.write(Floor_6)
			end
			if floors >= 6 then
				f6.write(Floor_6)
			end
			if floors >= 7 then
				f7.write(Floor_6)
			end
			if floors >= 8 then
				f8.write(Floor_6)
			end
			if floors >= 9 then
				f9.write(Floor_6)
			end
			if floors >= 10 then
				f10.write(Floor_6)
			end
			if floors >= 11 then
				f11.write(Floor_6)
			end
			if floors >= 12 then
				f12.write(Floor_6)
			end
			if floors >= 13 then
				f13.write(Floor_6)
			end
			if floors >= 14 then
				f14.write(Floor_6)
			end
			if floors >= 15 then
				f15.write(Floor_6)
			end
			if floors >= 16 then
				f16.write(Floor_6)
			end
		end
		
		--Floor 7
		if test == 64 then
			print(Floor_7)
			if floors >= 1 then
				f1.write(Floor_7)
			end
			if floors >= 2 then
				f2.write(Floor_7)
			end
			if floors >= 3 then
				f3.write(Floor_7)
			end
			if floors >= 4 then
				f4.write(Floor_7)
			end
			if floors >= 5 then
				f5.write(Floor_7)
			end
			if floors >= 6 then
				f6.write(Floor_7)
			end
			if floors >= 7 then
				f7.write(Floor_7)
			end
			if floors >= 8 then
				f8.write(Floor_7)
			end
			if floors >= 9 then
				f9.write(Floor_7)
			end
			if floors >= 10 then
				f10.write(Floor_7)
			end
			if floors >= 11 then
				f11.write(Floor_7)
			end
			if floors >= 12 then
				f12.write(Floor_7)
			end
			if floors >= 13 then
				f13.write(Floor_7)
			end
			if floors >= 14 then
				f14.write(Floor_7)
			end
			if floors >= 15 then
				f15.write(Floor_7)
			end
			if floors >= 16 then
				f16.write(Floor_7)
			end
		end
		
		--Floor 8
		if test == 128 then
			print(Floor_8)
			if floors >= 1 then
				f1.write(Floor_8)
			end
			if floors >= 2 then
				f2.write(Floor_8)
			end
			if floors >= 3 then
				f3.write(Floor_8)
			end
			if floors >= 4 then
				f4.write(Floor_8)
			end
			if floors >= 5 then
				f5.write(Floor_8)
			end
			if floors >= 6 then
				f6.write(Floor_8)
			end
			if floors >= 7 then
				f7.write(Floor_8)
			end
			if floors >= 8 then
				f8.write(Floor_8)
			end
			if floors >= 9 then
				f9.write(Floor_8)
			end
			if floors >= 10 then
				f10.write(Floor_8)
			end
			if floors >= 11 then
				f11.write(Floor_8)
			end
			if floors >= 12 then
				f12.write(Floor_8)
			end
			if floors >= 13 then
				f13.write(Floor_8)
			end
			if floors >= 14 then
				f14.write(Floor_8)
			end
			if floors >= 15 then
				f15.write(Floor_8)
			end
			if floors >= 16 then
				f16.write(Floor_8)
			end
		end
		
		--Floor 9
		if test == 256 then
			print(Floor_9)
			if floors >= 1 then
				f1.write(Floor_9)
			end
			if floors >= 2 then
				f2.write(Floor_9)
			end
			if floors >= 3 then
				f3.write(Floor_9)
			end
			if floors >= 4 then
				f4.write(Floor_9)
			end
			if floors >= 5 then
				f5.write(Floor_9)
			end
			if floors >= 6 then
				f6.write(Floor_9)
			end
			if floors >= 7 then
				f7.write(Floor_9)
			end
			if floors >= 8 then
				f8.write(Floor_9)
			end
			if floors >= 9 then
				f9.write(Floor_9)
			end
			if floors >= 10 then
				f10.write(Floor_9)
			end
			if floors >= 11 then
				f11.write(Floor_9)
			end
			if floors >= 12 then
				f12.write(Floor_9)
			end
			if floors >= 13 then
				f13.write(Floor_9)
			end
			if floors >= 14 then
				f14.write(Floor_9)
			end
			if floors >= 15 then
				f15.write(Floor_9)
			end
			if floors >= 16 then
				f16.write(Floor_9)
			end
		end
		
		--Floor 10
		if test == 512 then
			print(Floor_10)
			if floors >= 1 then
				f1.write(Floor_10)
			end
			if floors >= 2 then
				f2.write(Floor_10)
			end
			if floors >= 3 then
				f3.write(Floor_10)
			end
			if floors >= 4 then
				f4.write(Floor_10)
			end
			if floors >= 5 then
				f5.write(Floor_10)
			end
			if floors >= 6 then
				f6.write(Floor_10)
			end
			if floors >= 7 then
				f7.write(Floor_10)
			end
			if floors >= 8 then
				f8.write(Floor_10)
			end
			if floors >= 9 then
				f9.write(Floor_10)
			end
			if floors >= 10 then
				f10.write(Floor_10)
			end
			if floors >= 11 then
				f11.write(Floor_10)
			end
			if floors >= 12 then
				f12.write(Floor_10)
			end
			if floors >= 13 then
				f13.write(Floor_10)
			end
			if floors >= 14 then
				f14.write(Floor_10)
			end
			if floors >= 15 then
				f15.write(Floor_10)
			end
			if floors >= 16 then
				f16.write(Floor_10)
			end
		end
		
		--Floor 11
		if test == 1024 then
			print(Floor_11)
			if floors >= 1 then
				f1.write(Floor_11)
			end
			if floors >= 2 then
				f2.write(Floor_11)
			end
			if floors >= 3 then
				f3.write(Floor_11)
			end
			if floors >= 4 then
				f4.write(Floor_11)
			end
			if floors >= 5 then
				f5.write(Floor_11)
			end
			if floors >= 6 then
				f6.write(Floor_11)
			end
			if floors >= 7 then
				f7.write(Floor_11)
			end
			if floors >= 8 then
				f8.write(Floor_11)
			end
			if floors >= 9 then
				f9.write(Floor_11)
			end
			if floors >= 10 then
				f10.write(Floor_11)
			end
			if floors >= 11 then
				f11.write(Floor_11)
			end
			if floors >= 12 then
				f12.write(Floor_11)
			end
			if floors >= 13 then
				f13.write(Floor_11)
			end
			if floors >= 14 then
				f14.write(Floor_11)
			end
			if floors >= 15 then
				f15.write(Floor_11)
			end
			if floors >= 16 then
				f16.write(Floor_11)
			end
		end
		
		--Floor 12
		if test == 2048 then
			print(Floor_12)
			if floors >= 1 then
				f1.write(Floor_12)
			end
			if floors >= 2 then
				f2.write(Floor_12)
			end
			if floors >= 3 then
				f3.write(Floor_12)
			end
			if floors >= 4 then
				f4.write(Floor_12)
			end
			if floors >= 5 then
				f5.write(Floor_12)
			end
			if floors >= 6 then
				f6.write(Floor_12)
			end
			if floors >= 7 then
				f7.write(Floor_12)
			end
			if floors >= 8 then
				f8.write(Floor_12)
			end
			if floors >= 9 then
				f9.write(Floor_12)
			end
			if floors >= 10 then
				f10.write(Floor_12)
			end
			if floors >= 11 then
				f11.write(Floor_12)
			end
			if floors >= 12 then
				f12.write(Floor_12)
			end
			if floors >= 13 then
				f13.write(Floor_12)
			end
			if floors >= 14 then
				f14.write(Floor_12)
			end
			if floors >= 15 then
				f15.write(Floor_12)
			end
			if floors >= 16 then
				f16.write(Floor_12)
			end
		end
		
		--Floor 13
		if test == 4096 then
			print(Floor_13)
			if floors >= 1 then
				f1.write(Floor_13)
			end
			if floors >= 2 then
				f2.write(Floor_13)
			end
			if floors >= 3 then
				f3.write(Floor_13)
			end
			if floors >= 4 then
				f4.write(Floor_13)
			end
			if floors >= 5 then
				f5.write(Floor_13)
			end
			if floors >= 6 then
				f6.write(Floor_13)
			end
			if floors >= 7 then
				f7.write(Floor_13)
			end
			if floors >= 8 then
				f8.write(Floor_13)
			end
			if floors >= 9 then
				f9.write(Floor_13)
			end
			if floors >= 10 then
				f10.write(Floor_13)
			end
			if floors >= 11 then
				f11.write(Floor_13)
			end
			if floors >= 12 then
				f12.write(Floor_13)
			end
			if floors >= 13 then
				f13.write(Floor_13)
			end
			if floors >= 14 then
				f14.write(Floor_13)
			end
			if floors >= 15 then
				f15.write(Floor_13)
			end
			if floors >= 16 then
				f16.write(Floor_13)
			end
		end
		
		--Floor 14
		if test == 8192 then
			print(Floor_14)
			if floors >= 1 then
				f1.write(Floor_14)
			end
			if floors >= 2 then
				f2.write(Floor_14)
			end
			if floors >= 3 then
				f3.write(Floor_14)
			end
			if floors >= 4 then
				f4.write(Floor_14)
			end
			if floors >= 5 then
				f5.write(Floor_14)
			end
			if floors >= 6 then
				f6.write(Floor_14)
			end
			if floors >= 7 then
				f7.write(Floor_14)
			end
			if floors >= 8 then
				f8.write(Floor_14)
			end
			if floors >= 9 then
				f9.write(Floor_14)
			end
			if floors >= 10 then
				f10.write(Floor_14)
			end
			if floors >= 11 then
				f11.write(Floor_14)
			end
			if floors >= 12 then
				f12.write(Floor_14)
			end
			if floors >= 13 then
				f13.write(Floor_14)
			end
			if floors >= 14 then
				f14.write(Floor_14)
			end
			if floors >= 15 then
				f15.write(Floor_14)
			end
			if floors >= 16 then
				f16.write(Floor_14)
			end
		end
		
		--Floor 15
		if test == 16384 then
			print(Floor_15)
			if floors >= 1 then
				f1.write(Floor_15)
			end
			if floors >= 2 then
				f2.write(Floor_15)
			end
			if floors >= 3 then
				f3.write(Floor_15)
			end
			if floors >= 4 then
				f4.write(Floor_15)
			end
			if floors >= 5 then
				f5.write(Floor_15)
			end
			if floors >= 6 then
				f6.write(Floor_15)
			end
			if floors >= 7 then
				f7.write(Floor_15)
			end
			if floors >= 8 then
				f8.write(Floor_15)
			end
			if floors >= 9 then
				f9.write(Floor_15)
			end
			if floors >= 10 then
				f10.write(Floor_15)
			end
			if floors >= 11 then
				f11.write(Floor_15)
			end
			if floors >= 12 then
				f12.write(Floor_15)
			end
			if floors >= 13 then
				f13.write(Floor_15)
			end
			if floors >= 14 then
				f14.write(Floor_15)
			end
			if floors >= 15 then
				f15.write(Floor_15)
			end
			if floors >= 16 then
				f16.write(Floor_15)
			end
		end
		
		--Floor 16
		if test == 32768 then
			print(Floor_16)
			if floors >= 1 then
				f1.write(Floor_16)
			end
			if floors >= 2 then
				f2.write(Floor_16)
			end
			if floors >= 3 then
				f3.write(Floor_16)
			end
			if floors >= 4 then
				f4.write(Floor_16)
			end
			if floors >= 5 then
				f5.write(Floor_16)
			end
			if floors >= 6 then
				f6.write(Floor_16)
			end
			if floors >= 7 then
				f7.write(Floor_16)
			end
			if floors >= 8 then
				f8.write(Floor_16)
			end
			if floors >= 9 then
				f9.write(Floor_16)
			end
			if floors >= 10 then
				f10.write(Floor_16)
			end
			if floors >= 11 then
				f11.write(Floor_16)
			end
			if floors >= 12 then
				f12.write(Floor_16)
			end
			if floors >= 13 then
				f13.write(Floor_16)
			end
			if floors >= 14 then
				f14.write(Floor_16)
			end
			if floors >= 15 then
				f15.write(Floor_16)
			end
			if floors >= 16 then
				f16.write(Floor_16)
			end
		end
	
	--Prevent script loop crash
	sleep(0)
end
