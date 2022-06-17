Admin.create!(
  email: 'admin@admin',
  password: 'testtest'
)

team1 = Team.create!(
  team_name: 'Black Stars',
  introduction: '神奈川県を拠点にしてます。中年親父が余暇として始めたエンジョイフットサルチームです。'
)
team1.team_image.attach(io: File.open(Rails.root.join('app/assets/images/team_image1.png')),
                  filename: 'team_image1.png')
                  
team2 = Team.create!(
  team_name: 'Red Stars',
  introduction: '東京都を拠点にしてます。若者が県リーグ優勝を目標として始めた競技系フットサルチームです。'
)
team2.team_image.attach(io: File.open(Rails.root.join('app/assets/images/team_image2.png')),
                  filename: 'team_image2.pg')

Tag.create!(
  [
    {tag_name: "タグ1"},
    {tag_name: "タグ2"},
    {tag_name: "タグ3"},
  ]
)

tactic1 = Tactic.create!(
  description: '相手が前プレスしている時に使える戦術です'
)
tactic1.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Alacorta1.jpg')),
                  filename: 'Alacorta1.jpg')
tactic1.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Alacorta2.jpg')),
                  filename: 'Alacorta2.jpg')
tactic1.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Alacorta3.jpg')),
                  filename: 'Alacorta3.jpg')
tactic1.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Alacorta4.jpg')),
                  filename: 'Alacorta4.jpg')