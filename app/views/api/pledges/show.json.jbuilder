json.set! @pledge.id do
  json.extract! @pledge, :id, :amount, :pledgeable_type, :pledgeable_id, :backer_id
end

json.reward do
  json.set! @pledge.
end
