
User.create(username: 'teddy', email:"teddy.koomen@gmail.com",password:'koomen',password_confirmation:'koomen')
Proposal.create(title:'poop',summary:'smells',hypothesis:'bad',status:'open',user:User.last)

User.create({username: 'User1', email: 'user1@email.net', password: 'password', password_confirmation: 'password'})
User.create({username: 'User2', email: 'user2@email.net', password: 'password', password_confirmation: 'password'})
User.create({username: 'User3', email: 'user3@email.net', password: 'password', password_confirmation: 'password'})
User.create({username: 'User4', email: 'user4@email.net', password: 'password', password_confirmation: 'password'})

Proposal.create({title: "Is gravity safe?", summary: "none", hypothesis: "none", status: "open", user: User.find_by(id: 0)})
Proposal.create({title: "Is Minkee real?", summary: "none", hypothesis: "none", status: "open", user: User.find_by(id: 2)})
Proposal.create({title: "Where is Sephora?", summary: "none", hypothesis: "none", status: "in progress", user: User.find_by(id: 3)})

Experiment.create({results: "none", proposal: Proposal.find_by(id: 0), experimenter_id: 3})

Procedure.create({name: "Dropping Things", experiment_id: 0})

Observation.create({observer_id: 2, observable_id: 0, observable_type: "Experiment", body: "Things fall down"})
Observation.create({observer_id: 2, observable_id: 0, observable_type: "Procedure", body: "Things definitely fall down"})

Comment.create({commenter_id: 2, commentable_id: Proposal.find_by(id: 0), commentable_type: "proposal", body: "NOT SAFE"})
Comment.create({commenter_id: 3, commentable_id: Experiment.find_by(id: 0), commentable_type: "experiment", body: "I WILL FIND OUT"})
Comment.create({commenter_id: 2, commentable_id: Observation.find_by(id: 0), commentable_type: "observation", body: "Bogus."})

