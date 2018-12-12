json.array! @is_true_boards do |is_true_board|
  json.id is_true_board.id
  json.user_id is_true_board.user_id
  json.association_id is_true_board.association_id
  json.role_id is_true_board.role_id
  json.group_id is_true_board.group_id
  json.status is_true_board.status
  json.start_date is_true_board.start_date
  json.end_date is_true_board.end_date
end
