require( "ice" )

local saveData = true

if saveData then 

	local box1 = ice:newBox( "credits" )
	box1:store( "author", "Graham Ranson" )
	box1:store( "website", "http://www.grahamranson.co.uk" )
	box1:save()
	
	local box2 = IceBox:new( "food" )
	box2:store( "monkey", "banana" )
	box2:store( "cat", "fish" )
	box2:store( "cow", "grass" )
	box2:save()
	
	local box3 = IceBox:new( "player" )
	box3:store( "score", 125 )
	box3:store( "level", 10 )
	box3:store( "mode", "arcade" )
	box3:save()
	
	print( "Data Saved - Now open up 'main.lua' and change 'saveData' on line 3 to false." )
	
else
	
	print( "" )
	print( " -- BOX: credits -- " )
	local box1 = ice:loadBox( "credits" )
	box1:print()
	print( "" )
	
	print( " -- BOX: food -- " )	
	local box2 = IceBox:new( "food" )
	box2:load()
	box2:print()
	print( "" )
	
	print( " -- BOX: player -- " )	
	local box3 = IceBox:new( "player" )
	box3:load()
	box3:print()
	print( "" )
	
end