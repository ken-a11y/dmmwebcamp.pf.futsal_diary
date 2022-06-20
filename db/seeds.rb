Admin.create!(
  email: 'admin@admin',
  password: 'testtest'
)

team1 = Team.create!(
  team_name: 'Black Stars',
  introduction: '神奈川県を拠点にしてます。中年親父が余暇として始めたエンジョイフットサルチームです。',
  )
team1.team_image.attach(io: File.open(Rails.root.join('app/assets/images/team_image1.png')),
                  filename: 'team_image1.png')

team2 = Team.create!(
  team_name: 'Red Stars',
  introduction: '東京都を拠点にしてます。若者が県リーグ優勝を目標として始めた競技系フットサルチームです。'
)
team2.team_image.attach(io: File.open(Rails.root.join('app/assets/images/team_image2.png')),
                  filename: 'team_image2.png')

user1 = User.create!(
  name: 'sampleuser',
  team_id: 1,
  age: "37",
  number: "10",
  position: "ピヴォ",
  speed_rate: "5",
  power_rate: "5",
  tactics_rate: "5",
  email: 'sample@example.com',
  password: 'sample'
  )
  user1.profile_image.attach(io: File.open(Rails.root.join('app/assets/images/icon_00.png')),
                  filename: 'icon_00.png')

  team1.update!(owner_id: user1.id)


Tag.create!(
  [
    {tag_name: "タグ1"},
    {tag_name: "タグ2"},
    {tag_name: "タグ3"},
  ]
)


# Alacorta
tactic1 = Tactic.create!(
  title: 'Alacorta'
  )

tactic1.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Alacorta1.jpg')),
                  filename: 'Alacorta1.jpg')

 tactic_item = TacticItem.create!(
   description: "アラコルタ説明文1",
   tactic_id: tactic1.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Alacorta1.jpg')),
                  filename: 'Alacorta1.jpg')

 tactic_item = TacticItem.create!(
   description: "アラコルタ説明文2",
   tactic_id: tactic1.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Alacorta2.jpg')),
                  filename: 'Alacorta2.jpg')

 tactic_item = TacticItem.create!(
   description: "アラコルタ説明文3",
   tactic_id: tactic1.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Alacorta3.jpg')),
                  filename: 'Alacorta3.jpg')

 tactic_item = TacticItem.create!(
   description: "アラコルタ説明文4",
   tactic_id: tactic1.id
   )
  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Alacorta4.jpg')),
                  filename: 'Alacorta4.jpg')


# Diagonal
tactic2 = Tactic.create!(
  title: 'Diagonal'
  )

tactic2.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Diagonal1.jpg')),
                  filename: 'Diagonal1.jpg')

 tactic_item = TacticItem.create!(
   description: "ディアゴナル説明文1",
   tactic_id: tactic2.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Diagonal1.jpg')),
                  filename: 'Diagonal1.jpg')

 tactic_item = TacticItem.create!(
   description: "ディアゴナル説明文2",
   tactic_id: tactic2.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Diagonal2.jpg')),
                  filename: 'Diagonal2.jpg')

 tactic_item = TacticItem.create!(
   description: "ディアゴナル説明文3",
   tactic_id: tactic2.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Diagonal3.jpg')),
                  filename: 'Diagonal3.jpg')

 tactic_item = TacticItem.create!(
   description: "ディアゴナル説明文4",
   tactic_id: tactic2.id
   )
  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Diagonal4.jpg')),
                  filename: 'Diagonal4.jpg')


# Entre
tactic3 = Tactic.create!(
  title: 'Entre'
  )

tactic3.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Entre1.jpg')),
                  filename: 'Entre1.jpg')

 tactic_item = TacticItem.create!(
   description: "エントレ説明文1",
   tactic_id: tactic3.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Entre2.jpg')),
                  filename: 'Entre2.jpg')

 tactic_item = TacticItem.create!(
   description: "エントレ説明文2",
   tactic_id: tactic3.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Entre2.jpg')),
                  filename: 'Entre2.jpg')

 tactic_item = TacticItem.create!(
   description: "エントレ説明文3",
   tactic_id: tactic3.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Entre3.jpg')),
                  filename: 'Entre3.jpg')


# L
tactic4 = Tactic.create!(
  title: 'L'
  )

tactic4.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/L1.jpg')),
                  filename: 'L1.jpg')

 tactic_item = TacticItem.create!(
   description: "エル説明文1",
   tactic_id: tactic4.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/L1.jpg')),
                  filename: 'L1.jpg')

 tactic_item = TacticItem.create!(
   description: "エル説明文2",
   tactic_id: tactic4.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/L2.jpg')),
                  filename: 'L2.jpg')

 tactic_item = TacticItem.create!(
   description: "エル説明文3",
   tactic_id: tactic4.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/L3.jpg')),
                  filename: 'L3.jpg')


  # Onetwo
tactic5 = Tactic.create!(
  title: 'Onetwo'
  )

tactic5.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Onetwo1.jpg')),
                  filename: 'Onetwo1.jpg')

 tactic_item = TacticItem.create!(
   description: "ワンツー説明文1",
   tactic_id: tactic5.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Onetwo1.jpg')),
                  filename: 'Onetwo1.jpg')

 tactic_item = TacticItem.create!(
   description: "ワンツー説明文2",
   tactic_id: tactic5.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Onetwo2.jpg')),
                  filename: 'Onetwo2.jpg')

 tactic_item = TacticItem.create!(
   description: "ワンツー説明文3",
   tactic_id: tactic5.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Onetwo3.jpg')),
                  filename: 'Onetwo3.jpg')

 tactic_item = TacticItem.create!(
   description: "ワンツー説明文4",
   tactic_id: tactic5.id
   )
  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Onetwo4.jpg')),
                  filename: 'Onetwo4.jpg')



# Pararella
tactic6 = Tactic.create!(
  title: 'Pararella'
  )

tactic6.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Pararella1.jpg')),
                  filename: 'Pararella1.jpg')

 tactic_item = TacticItem.create!(
   description: "パラレラ説明文1",
   tactic_id: tactic6.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Pararella1.jpg')),
                  filename: 'Pararella1.jpg')

 tactic_item = TacticItem.create!(
   description: "パラレラ説明文2",
   tactic_id: tactic6.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Pararella2.jpg')),
                  filename: 'Pararella2.jpg')

 tactic_item = TacticItem.create!(
   description: "パラレラ説明文3",
   tactic_id: tactic6.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Pararella3.jpg')),
                  filename: 'Pararella3.jpg')



# Pivoala
tactic7 = Tactic.create!(
  title: 'Pivoala'
  )

tactic7.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Pivoala1.jpg')),
                  filename: 'Pivoala1.jpg')

 tactic_item = TacticItem.create!(
   description: "ピヴォアラ説明文1",
   tactic_id: tactic7.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Pivoala1.jpg')),
                  filename: 'Pivoala1.jpg')

 tactic_item = TacticItem.create!(
   description: "ピヴォアラ説明文2",
   tactic_id: tactic7.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Pivoala2.jpg')),
                  filename: 'Pivoala2.jpg')

 tactic_item = TacticItem.create!(
   description: "ピヴォアラ説明文3",
   tactic_id: tactic7.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Pivoala3.jpg')),
                  filename: 'Pivoala3.jpg')



# Pivoate
tactic8 = Tactic.create!(
  title: 'Pivoate'
  )

tactic8.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Pivoate1.jpg')),
                  filename: 'Pivoate1.jpg')

 tactic_item = TacticItem.create!(
   description: "ピヴォ当て説明文1",
   tactic_id: tactic8.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Pivoate1.jpg')),
                  filename: 'Pivoate1.jpg')

 tactic_item = TacticItem.create!(
   description: "ピヴォ当て説明文2",
   tactic_id: tactic8.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Pivoate2.jpg')),
                  filename: 'Pivoate2.jpg')

 tactic_item = TacticItem.create!(
   description: "ピヴォ当て説明文3",
   tactic_id: tactic8.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Pivoate3.jpg')),
                  filename: 'Pivoate3.jpg')



# Redondo
tactic9 = Tactic.create!(
  title: 'Redondo'
  )

tactic9.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Redondo1.jpg')),
                  filename: 'Redondo1.jpg')

 tactic_item = TacticItem.create!(
   description: "へドンド説明文1",
   tactic_id: tactic9.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Redondo1.jpg')),
                  filename: 'Redondo1.jpg')

 tactic_item = TacticItem.create!(
   description: "へドンド説明文2",
   tactic_id: tactic9.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Redondo2.jpg')),
                  filename: 'Redondo2.jpg')

 tactic_item = TacticItem.create!(
   description: "へドンド説明文3",
   tactic_id: tactic9.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Redondo3.jpg')),
                  filename: 'Redondo3.jpg')
