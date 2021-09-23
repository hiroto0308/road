crumb :root do
  link "Home", root_path
end

crumb :rooads do
  link "ロードマップ一覧", rooads_path
  parent :root
end

crumb :show do
  link "詳細ページ", rooad_path
  parent :rooads
end

crumb :new do
  link "投稿ページ", new_rooad_path
  parent :rooads
end

crumb :edit do
  link "編集", edit_rooad_path
  parent :rooads
end