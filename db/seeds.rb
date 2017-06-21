User.create(username: 'teddy', email:"teddy.koomen@gmail.com",password:'koomen')
Proposal.create(title:'poop',summary:'smells',hypothesis:'bad',status:'open',user:User.last)
