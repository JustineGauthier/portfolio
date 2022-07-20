class ConvertDate
  def initialize(attributes = {})
    @date = attributes[:date]
  end

  MONTHS = {'01' => "janvier", '02' => "février", '03' => "mars", '04' => "avril",
  '05' => "mai", '06' => "juin", '07' => "juillet", '08' => "août",
  '09'=> "septembre", '10' => "octobre", '11' => "novembre", '12' => "décembre"}

  def call
    date = @date.to_s.split("-")
    year = date[0]
    month = MONTHS[date[1]]
    return "#{month} #{year}"
  end
end
