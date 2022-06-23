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
    {tag_name: "Alacorta"},
    {tag_name: "Diagonal"},
    {tag_name: "Entre"},
    {tag_name: "L"},
    {tag_name: "Onetwo"},
    {tag_name: "Pararella"},
    {tag_name: "Pivoala"},
    {tag_name: "Pivoate"},
    {tag_name: "Redondo"},
  ]
)


# Alacorta
tactic1 = Tactic.create!(
  title: 'Alacorta'
  )

tactic1.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Alacorta1.jpg')),
                  filename: 'Alacorta1.jpg')

 tactic_item = TacticItem.create!(
   description: "①フィクソはバックステップでパスを受ける位置に移動する\n
                 ◇左アラが相手選手3をドリブルで抜けないときに発動する
                 ◇フィクソはバックステップすることで相手選手2とのスペースを空ける",
   tactic_id: tactic1.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Alacorta1.jpg')),
                  filename: 'Alacorta1.jpg')

 tactic_item = TacticItem.create!(
   description: "②左アラはフィクソにパスを出し、中央へ走る\n
                 ◇左アラは速く走ると相手選手2に隠れてしまうので、ゆっくり走る",
   tactic_id: tactic1.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Alacorta2.jpg')),
                  filename: 'Alacorta2.jpg')

 tactic_item = TacticItem.create!(
   description: "③フィクソは中央へ走る左アラにパスを出す\n
                 ◇左アラは足裏でなめるようにトラップして、シュートできる位置にボールを置く",
   tactic_id: tactic1.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Alacorta3.jpg')),
                  filename: 'Alacorta3.jpg')

 tactic_item = TacticItem.create!(
   description: "",
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
   description: "①フィクソは左アラにパスを出し、中央のスペースに走り出す\n
                 ◇ピヴォがコート左側にいて、コート右側のスペースが空いているときに発動できる
                 ◇フィクソは相手の裏を取ることで視線を外す",
   tactic_id: tactic2.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Diagonal1.jpg')),
                  filename: 'Diagonal1.jpg')

 tactic_item = TacticItem.create!(
   description: "②フィクソは走る向きを変えて、コート右側のスペースに走る\n
                 ◇フィクソは相手の視線が外れたタイミングで走る向きを変える",
   tactic_id: tactic2.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Diagonal2.jpg')),
                  filename: 'Diagonal2.jpg')

 tactic_item = TacticItem.create!(
   description: "③左アラからフィクソにパスを送る\n\n
                 ◇左アラは中にドリブルすることでフィクソへのパスコースを作る",
   tactic_id: tactic2.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Diagonal3.jpg')),
                  filename: 'Diagonal3.jpg')

 tactic_item = TacticItem.create!(
   description: "",
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
   description: "①フィクソは左アラにパスを出し、中央のスペースに走る\n
                 ◇相手選手2と相手選手3の間をポジショニングできるよう意識する",
   tactic_id: tactic3.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Entre2.jpg')),
                  filename: 'Entre1.jpg')

 tactic_item = TacticItem.create!(
   description: "②左アラはフィクソにパスを出す",
   tactic_id: tactic3.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Entre2.jpg')),
                  filename: 'Entre2.jpg')

 tactic_item = TacticItem.create!(
   description: "",
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
   description: "①フィクソは左アラにパスを出し、ピヴォは同サイドに走る\n
                 ◇ピヴォは最初から左サイドにいた場合、相手選手5がついてくるので、パスが出たタイミングで動く",
   tactic_id: tactic4.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/L1.jpg')),
                  filename: 'L1.jpg')

 tactic_item = TacticItem.create!(
   description: "②左アラはピヴォにパスを出し、中央のピヴォが空けたスペースに走る",
   tactic_id: tactic4.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/L2.jpg')),
                  filename: 'L2.jpg')

 tactic_item = TacticItem.create!(
   description: "",
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
   description: "①左アラは右アラにパスを出し、パスを受けに近付く\n
                 ◇右アラと相手選手4の距離感が近いときに発動する",
   tactic_id: tactic5.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Onetwo1.jpg')),
                  filename: 'Onetwo1.jpg')

 tactic_item = TacticItem.create!(
   description: "②右アラは左アラにリターンパスを出し、相手選手4を追い越す",
   tactic_id: tactic5.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Onetwo2.jpg')),
                  filename: 'Onetwo2.jpg')

 tactic_item = TacticItem.create!(
   description: "③左アラは右アラが前線に上がったタイミングでパスを出す",
   tactic_id: tactic5.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Onetwo3.jpg')),
                  filename: 'Onetwo3.jpg')

 tactic_item = TacticItem.create!(
   description: "",
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
   description: "①左アラは右アラにパスを出し、コート右側の空いたスペースに走り込む\n
                 ◇相手選手4が中央へのパスコースを切っていて、縦へのパスコースが空いてる時に発動する
                 ◇左アラは斜めに走るのではなく、徐々に斜めへの角度を強めて走ることを意識する",
   tactic_id: tactic6.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Pararella1.jpg')),
                  filename: 'Pararella1.jpg')

 tactic_item = TacticItem.create!(
   description: "②右アラから左アラへ縦パスを出す",
   tactic_id: tactic6.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Pararella2.jpg')),
                  filename: 'Pararella2.jpg')

 tactic_item = TacticItem.create!(
   description: "",
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
   description: "①左アラとピヴォがポジションチェンジをする\n
                 ◇フィクソがボールの出しどころに困っているときに発動する
                 ◇アラはピヴォの位置がコート左側に寄っている事を確認して中に入る",
   tactic_id: tactic7.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Pivoala1.jpg')),
                  filename: 'Pivoala1.jpg')

 tactic_item = TacticItem.create!(
   description: "②外に張り出したピヴォにパスを出す\n
                 ◇フィクソはピヴォがマーカーと対峙するためのスペースを作るため、強いパスを出す",
   tactic_id: tactic7.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Pivoala2.jpg')),
                  filename: 'Pivoala2.jpg')

 tactic_item = TacticItem.create!(
   description: "",
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
   description: "①フィクソは左アラにパスを出す",
   tactic_id: tactic8.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Pivoate1.jpg')),
                  filename: 'Pivoate1.jpg')

 tactic_item = TacticItem.create!(
   description: "②左アラはピヴォにパスを当てて、落としを受けるため、ピヴォの近くまで走る",
   tactic_id: tactic8.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Pivoate2.jpg')),
                  filename: 'Pivoate2.jpg')

 tactic_item = TacticItem.create!(
   description: "",
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
   description: "①右アラがフィクソにパスを出し、同時に全員が旋回するように回る",
   tactic_id: tactic9.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Redondo1.jpg')),
                  filename: 'Redondo1.jpg')

 tactic_item = TacticItem.create!(
   description: "②フィクソはピヴォまたは右アラにパスを出す",
   tactic_id: tactic9.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Redondo2.jpg')),
                  filename: 'Redondo2.jpg')

 tactic_item = TacticItem.create!(
   description: "",
   tactic_id: tactic9.id
   )

  tactic_item.tactic_image.attach(io: File.open(Rails.root.join('app/assets/images/Redondo3.jpg')),
                  filename: 'Redondo3.jpg')
