# your code goes here
def begins_with_r(array)
  r_test = nil
  array.each do |code|
    if code[0]== "r"
      r_test = true
    else
      r_test = false
    end
  end
  r_test
end

def contain_a(array)
  array.collect do |value|
    if value.include?("a")
      value
    end
  end.compact
end

def first_wa(array)
  first_wa = nil
  array.each do |element|
    if element.match(/wa/)
      first_wa = element
      break
    end
  end
  first_wa
end

def remove_non_strings(array)
  strings_only=[]
  array.each do |value|
    if value.class == String
      strings_only << value
    end
  end
  strings_only
end

def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, data)
  container = []
    #prepare new array to merge data
  keys.each do |person_name|
    #iterates across first level keys hash
      #{:first_name}=> {"blake","ashley"}
    name = person_name[:first_name]
      #pulls name from hash
    data.each do |person_data|
      #iterates first level data hash
        #{"blake"=> {awesomeness:10, height:"74", . . .}
      if person_data[name]
        #name references earlier name=person_name[:first_name]
        #if person_data[name] exists, then true
        merged_person = person_data[name]
        #if true, creates variable 'merged_person' and sets equal to key:value
        merged_person[:first_name] = name
        #creates :first_name hash within merged_person and sets equal to name
        container << merged_person
        #adds hash to the array we created
      end
    end
  end
  container
  #calls back container
end

def find_cool(array)
  cool_hashes=[]
    #sets empty array
  array.each do |cool|
    #iterate 1st level
    #{name: "blake", "temperature"}
  if cool[:temperature]=="cool"
    #checks if hash key :temperature == "cool"
    cool_hashes<<cool
    #if true, push the entire hash into the new array
  end
end
cool_hashes
#call array
end

def organize_schools(schools)
  organized_schools = {}
  #sets the new hash array for our values
  schools.each do |name, location_hash|
    #iterates across first level
    #"flatiron": => {location=>NYC}
    location = location_hash[:location]
      #sets location variable = value pulled from location key
    if organized_schools[location]
      #checks to see if organized_school hash contains location key
      organized_schools[location] << name
      #pass name of program into location key
    else
    organized_schools[location] = []
      #create new location array into nest if location doesn't exist
    organized_schools[location] << name
      #pass location value into details
  end
end
organized_schools
#call new hash
end
