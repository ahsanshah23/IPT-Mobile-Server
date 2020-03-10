//adding 3rd packages
const express = require('express');
const bodyparser = require('body-parser');
const path = require('path');
const mysql = require('mysql');

//Connecting to database
const db = require('./util/database');

//initializing express
const app = express();
let server = app.listen(3006);

//adding routes
module.exports.getIO = function () {
    return io;
}

//iniliazing body-parser
app.use(bodyparser.urlencoded());

//using express static to add css via public folder
app.use(express.static(path.join(__dirname, 'public')));

//Routes to pages
app.use('/useradd', (req, res) => {
    var Email = req.query.Email;
    var Password = req.query.Password;
    var Name = req.query.Name;
    db.execute("INSERT INTO USER (ID, Name, Email, Password, Role) VALUES ('','" + Name + "','" + Email + "','" + Password + "', 'External') ")
        .then(results => {
            res.send("inserted")
        })
        .catch(err => {
            console.log(err)
        });
});

app.use('/userlogin', (req, res) => {
    var Email = req.query.Email;
    var Password = req.query.Password;
    db.execute("SELECT * FROM USER WHERE Email = '" + Email + "' AND Password = '" + Password + "'  ")
        .then(results => {
            if (results[0].length > 0) {
                res.send(results[0]);
            }
            else {
                res.send("0");
            }

            res.send(results[0])
        })
        .catch(err => {
            console.log(err)
        });
});

//Student FYP1

app.use('/fyp1proposal_add', (req, res) => {
    var Title = req.query.title;
    var Type = req.query.type;
    var area_of_interest = req.query.areaofinterest;
    var abstract = req.query.abstract;
    var leadername = req.query.leadername;
    var member2name = req.query.member2name;
    var member3name = req.query.member3name;
    var leaderemail = req.query.leaderemail;
    var member2email = req.query.member2email;
    var member3email = req.query.member3email;
    var supervisor_email = req.query.supervisor;
    var cosupervisor_email = req.query.cosupervisor;
    var submitted_by = req.query.submitted_by;


    db.execute("INSERT INTO fyp1_proposal (id, project_title, project_type, area_of_interest, abstract, leader_name, leader_email, member2_name, member2_email, member3_name, member3_email, supervisor, cosupervisor, status, comment, submitted_by ) VALUES (' ', '" + Title + "' ,'" + Type + "','" + area_of_interest + "','" + abstract + "','" + leadername + "','" + leaderemail + "','" + member2name + "','" + member2email + "','" + member3name + "','" + member3email + "','" + supervisor_email + "','" + cosupervisor_email + "', '', '', '" + submitted_by + "') ")
        .then(results => {
            db.execute("insert into fyp_groups (id,title,leaderemail,member2email,member3email,supervisor,cosupervisor) VALUES ('', '" + Title + "', '" + leaderemail + "', '" + member2email + "', '" + member3email + "', '" + supervisor_email + "', '" + cosupervisor_email + "')")
                .then(results => {
                    res.send("Inserted")
                })
                .catch(err => {
                    console.log(err)
                });
        })

});

app.use('/fyp1proposal_view', (req, res) => {

    var email = req.query.Email;

    db.execute("SELECT * FROM fyp1_proposal where leader_email='"+email+"' OR member2_email='"+email+"' OR member3_email='"+email+"' ")
        .then(results => {
            res.send(results[0])
        })
        .catch(err => {
            console.log(err)
        });
});

app.use('/fyp1proposal_status', (req, res) => {
    var email = req.query.Email;
    console.log(email)

    db.execute("Select * from fyp1_proposal where leader_email='" + email + "' OR member2_email='" + email + "' OR member3_email='" + email + "' ")
        .then(results => {
            console.log(results[0].length);
            if (results[0].length > 0) {
                res.send("1");
            }
            else {
                res.send("0");
            }

        })
        .catch(err => {
            console.log(err)
        });
});

app.use('/fyp1midevaluation_view', (req, res) => {
    var email = req.query.Email;

    db.execute("SELECT * FROM fyp1_mid_evaluation where leader_email='"+email+"' OR member2_email='"+email+"' OR member3_email='"+email+"'")
        .then(results => {
            var total = parseInt(results[0][0].Criteria1_Marks) + parseInt(results[0][0].Criteria2_Marks)
            // var total = results[0].markcriteria1+results[0].markcriteria2;

            res.send(results[0])
            // res.send(total)
        })
        .catch(err => {
            console.log(err)
        });
});

app.use('/fyp1finalevaluation_view', (req, res) => {
    var email = req.query.Email;

    db.execute("SELECT * FROM fyp1_final_evaluation where leader_email='"+email+"' OR member2_email='"+email+"' OR member3_email='"+email+"'")
        .then(results => {
            res.send(results[0])
        })
        .catch(err => {
            console.log(err)
        });
});

//Student FYP2

app.use('/fyp2midevaluation_view', (req, res) => {
    var email = req.query.Email;
    db.execute("SELECT * FROM fyp2_mid_evaluation where leader_email='"+email+"' OR member2_email='"+email+"' OR member3_email='"+email+"'")
        .then(results => {
            res.send(results[0])
        })
        .catch(err => {
            console.log(err)
        });
});

app.use('/fyp2finalevaluation_view', (req, res) => {
    var email = req.query.Email;
    // console.log(email);
    db.execute("SELECT * FROM fyp2_final_evaluation where leader_email='"+email+"' OR member2_email='"+email+"' OR member3_email='"+email+"' ")
        .then(results => {
            res.send(results[0])
        })
        .catch(err => {
            console.log(err)
        });
});

app.use('/fyp2finalevaluationexternal_view', (req, res) => {
    var email = req.query.Email;
    db.execute("SELECT * FROM fyp2_final_evaluation_external where leader_email='"+email+"' OR member2_email='"+email+"' OR member3_email='"+email+"'")
        .then(results => {
            res.send(results[0])
        })
        .catch(err => {
            console.log(err)
        });
});

//Teacher FYP1

app.use('/fyp1proposal_update', (req, res) => {
    var status = req.query.status;
    var comment = req.query.comment;
    var leaderemail = req.query.leaderemail;
    var member2email = req.query.member2email;
    var member3email = req.query.member3email;
    var supervisor_email = req.query.supervisor;
    var cosupervisor_email = req.query.cosupervisor;
    var title = req.query.title;
    db.execute("UPDATE fyp1_proposal set status='" + status + "',comment='" + comment + "' ")
        .then(results => {
            if (status == "Accepted") {

                res.send("updated")

            }
            else {
                db.execute("Delete from fyp_groups where title='" + title + "'")
                    .then(results => {
                        res.send("updated")
                    })
                    .catch(err => {
                        console.log(err)
                    });
            }

        })
        .catch(err => {
            console.log(err)
        });


});

app.use('/fyp1proposal_list', (req, res) => {
    var email = req.query.Email;

    db.execute("Select id,project_title,leader_email from fyp1_proposal where supervisor='" + email + "' OR cosupervisor='" + email + "' OR leader_email='" + email + "' OR member2_email='" + email + "' OR member3_email='" + email + "' ")
        .then(results => {
            res.send(results[0])
        })
        .catch(err => {
            console.log(err)
        });
});

app.use('/fypnames', (req, res) => {
    var email = req.query.Email;

    db.execute("Select * from fyp_groups ")
        .then(results => {
            res.send(results[0])
        })
        .catch(err => {
            console.log(err)
        });
});

app.use('/fyp1midevaluation_add', (req, res) => {
    var Title = req.query.title;
    var leadername = req.query.leadername;
    var member2name = req.query.member2name;
    var member3name = req.query.member3name;
    var leaderemail = req.query.leaderemail;
    var member2email = req.query.member2email;
    var member3email = req.query.member3email;
    var supervisor_email = req.query.supervisor;
    var cosupervisor_email = req.query.cosupervisor;
    var status = req.query.status;
    var markcriteria1 = req.query.markcriteria1;
    var markcriteria2 = req.query.markcriteria2;
    var markcriteria3 = req.query.markcriteria3;
    var markcriteria4 = req.query.markcriteria4;
    var markcriteria5 = req.query.markcriteria5;
    var markcriteria6 = req.query.markcriteria6;
    var deliverable1 = req.query.deliverable1;
    var deliverable2 = req.query.deliverable2;
    var deliverable3 = req.query.deliverable3;
    var deliverable4 = req.query.deliverable4;
    var deliverable5 = req.query.deliverable5;
    var changes = req.query.changes;
    var comments = req.query.comments;
    var evaluator = req.query.evaluator;
    var coevaluator = req.query.coevaluator;
    var submitted_by = req.query.submitted_by;


    db.execute(" INSERT INTO fyp1_mid_evaluation (ID, Project_Title, leader_email, leader_name, member2_email, member2_name, member3_email, member3_name, supervisor_email, cosupervisor_email, Project_Status, Criteria1_Marks, Criteria2_Marks, Criteria3_Marks, Criteria4_Marks, Criteria5_Marks, Criteria6_Marks, Deliverable1, Deliverable2, Deliverable3, Deliverable4, Deliverable5, Recommended_Changes, Comments_To_FYP_Committee, Evaluator1_Name, Evaluator2_Name, submitted_by ) VALUES (' ', '" + Title + "', '" + leaderemail + "', '" + leadername + "','" + member2email + "','" + member2name + "','" + member3email + "','" + member3name + "','" + supervisor_email + "','" + cosupervisor_email + "', '" + status + "', '" + markcriteria1 + "','" + markcriteria2 + "','" + markcriteria3 + "','" + markcriteria4 + "','" + markcriteria5 + "','" + markcriteria6 + "','" + deliverable1 + "','" + deliverable2 + "','" + deliverable3 + "','" + deliverable4 + "','" + deliverable5 + "', '" + changes + "','" + comments + "','" + evaluator + "','" + coevaluator + "','" + submitted_by + "') ")
        .then(results => {
            res.send('Inserted');
        })
});

app.use('/fyp1finalevaluation_add', (req, res) => {
    console.log("hello");
    var Title = req.query.title;
    var leadername = req.query.leadername;
    var member2name = req.query.member2name;
    var member3name = req.query.member3name;


    var leaderemail = req.query.leaderemail;
    var member2email = req.query.member2email;
    var member3email = req.query.member3email;


    var supervisor_email = req.query.supervisor;
    var cosupervisor_email = req.query.cosupervisor;

    var Deliverable1_Name = req.query.deliverable1detail;
    var Deliverable2_Name = req.query.deliverable2detail;
    var Deliverable3_Name = req.query.deliverable3detail;
    var Deliverable4_Name = req.query.deliverable4detail;
    var Deliverable5_Name = req.query.deliverable5detail;

    var Deliverable1_Completed = req.query.deliverable1completed;
    var Deliverable2_Completed = req.query.deliverable2completed;
    var Deliverable3_Completed = req.query.deliverable3completed;
    var Deliverable4_Completed = req.query.deliverable4completed;
    var Deliverable5_Completed = req.query.deliverable5completed;

    var Member1_Marks = req.query.leadermarks;
    var Member2_Marks = req.query.member2marks;
    var Member3_Marks = req.query.member3marks;

    var FYP2_Deliverables = req.query.fyp2deliverables;

    var Jury1_Name = req.query.evaluator;
    var Jury2_Name = req.query.coevaluator;
    var submitted_by = req.query.submitted_by;


    db.execute(" INSERT INTO fyp1_final_evaluation (ID, Project_Title, leader_name, member2_name, member3_name, leader_email, member2_email, member3_email, supervisor_email, cosupervisor_email, Deliverable1_Name, Deliverable2_Name, Deliverable3_Name, Deliverable4_Name, Deliverable5_Name, Deliverable1_Completed, Deliverable2_Completed, Deliverable3_Completed, Deliverable4_Completed, Deliverable5_Completed, FYP2_Deliverables, Member1_Marks, Member2_Marks, Member3_Marks, Jury1_Name, Jury2_Name, submitted_by ) VALUES (' ', '" + Title + "', '" + leadername + "', '" + member2name + "','" + member3name + "','" + leaderemail + "','" + member2email + "','" + member3email + "','" + supervisor_email + "','" + cosupervisor_email + "', '" + Deliverable1_Name + "', '" + Deliverable2_Name + "','" + Deliverable3_Name + "','" + Deliverable4_Name + "','" + Deliverable5_Name + "','" + Deliverable1_Completed + "','" + Deliverable2_Completed + "','" + Deliverable3_Completed + "','" + Deliverable4_Completed + "','" + Deliverable5_Completed + "','" + FYP2_Deliverables + "','" + Member1_Marks + "', '" + Member2_Marks + "','" + Member3_Marks + "','" + Jury1_Name + "','" + Jury2_Name + "','" + submitted_by + "') ")
        .then(results => {
            db.execute(" UPDATE user set fyp1_final_marks='" + Member1_Marks + "' where Email='" + leaderemail + "'  ")
                .then(results => {
                    db.execute(" UPDATE user set fyp1_final_marks='" + Member2_Marks + "' where Email='" + member2email + "'  ")
                        .then(results => {
                            db.execute(" UPDATE user set fyp1_final_marks='" + Member3_Marks + "' where Email='" + member3email + "'  ")
                                .then(results => {
                                    res.send('Inserted');
                                })
                        })
                })
        })
});

app.use('/fyp1proposal_status_teacher', (req, res) => {
    var email = req.query.Email;

    db.execute("Select * from fyp1_proposal where leader_email='" + email + "' AND status='' AND comment=''  ")
        .then(results => {
            // console.log(results[0].length);
            if (results[0].length > 0) {
                res.send("1");
            }
            else {
                res.send("0");
            }

        })
        .catch(err => {
            console.log(err)
        });
});

app.use('/formfill_by_title', (req, res) => {
    var title = req.query.title;

    db.execute("Select * from fyp_groups where title='" + title + "'   ")
        .then(results => {
            res.send(results[0])

        })
        .catch(err => {
            console.log(err)
        });
});



//Teacher FYP2

app.use('/fyp2midevaluation_add', (req, res) => {
    var Project_title = req.query.title;
    var Team_Leader = req.query.member1Email;
    var Team_Member2 = req.query.member2Email;
    var Team_Member3 = req.query.member3Email;
    var supervisor_email = req.query.supervisorEmail;
    var cosupervisor_email = req.query.coSupervisorEmail;
    var Project_Progress = req.query.projectProgress;
    var Documentation_Status = req.query.documentationStatus;
    var Progress_Comments = req.query.progressComments;
    var Evaluator1_Name = req.query.evaluatorEmail;
    var Evaluator2_Name = req.query.coevaluatorEmail;
    var submitted_by = req.query.submitted_by;

    db.execute("INSERT INTO fyp2_mid_evaluation (ID, Project_title, Team_Leader, Team_Member2, Team_Member3, supervisor_email, cosupervisor_email, Project_Progress, Documentation_Status, Progress_Comments, Evaluator1_Name, Evaluator2_Name, submitted_by )     VALUES (' ', '" + Project_title + "' ,'" + Team_Leader + "','" + Team_Member2 + "','" + Team_Member3 + "','" + supervisor_email + "','" + cosupervisor_email + "','" + Project_Progress + "','" + Documentation_Status + "','" + Progress_Comments + "','" + Evaluator1_Name + "','" + Evaluator2_Name + "','" + submitted_by + "') ")
        .then(results => {
            res.send('Inserted');
        })
});

app.use('/fyp2finalevaluation_add', (req, res) => {
    var Project_Title = req.query.title;
    var leader_name = req.query.member1Email;
    var member2_name = req.query.member2Email;
    var member3_name = req.query.member3Email;
    var supervisor_email = req.query.supervisorEmail;
    var cosupervisor_email = req.query.coSupervisorEmail;
    var leader_email = req.query.member1Email;
    var member2_email = req.query.member2Email;
    var member3_email = req.query.member3Email;
    var leader_Marks = req.query.member1Mark;
    var Member2_Marks = req.query.member2Mark;
    var Member3_Marks = req.query.member3Mark;
    var Jury1_Name = req.query.evaluator;
    var Jury2_Name = req.query.coevaluator;
    var submitted_by = req.query.submitted_by;

    db.execute("INSERT INTO fyp2_final_evaluation (ID, Project_Title, leader_name, member2_name, member3_name, supervisor_email, cosupervisor_email, leader_email, member2_email, member3_email, leader_Marks, Member2_Marks, Member3_Marks, Jury1_Name, Jury2_Name, submitted_by ) VALUES (' ', '" + Project_Title + "' ,'" + leader_name + "','" + member2_name + "','" + member3_name + "','" + supervisor_email + "','" + cosupervisor_email + "','" + leader_email + "','" + member2_email + "','" + member3_email + "','" + leader_Marks + "','" + Member2_Marks + "','" + Member3_Marks + "','" + Jury1_Name + "','" + Jury2_Name + "','" + submitted_by + "') ")
        .then(results => {
            db.execute(" UPDATE user set fyp2_final_marks='" + leader_Marks + "' where Email='" + leader_email + "'  ")
                .then(results => {
                    db.execute(" UPDATE user set fyp2_final_marks='" + Member2_Marks + "' where Email='" + member2_email + "'  ")
                        .then(results => {
                            db.execute(" UPDATE user set fyp2_final_marks='" + Member3_Marks + "' where Email='" + member3_email + "'  ")
                                .then(results => {
                                    res.send('Inserted');
                                })
                        })
                })
        })
});


//FYP Groups

app.use('/fypgroups', (req, res) => {
    var email = req.query.Email;

    db.execute("Select * from fyp_groups where supervisor='" + email + "' OR cosupervisor='" + email + "'  ")
        .then(results => {
            res.send(results[0])
        })
        .catch(err => {
            console.log(err)
        });
});

//External

app.use('/fyp2finalevaluationexternal_add', (req, res) => {
    var Project_Title = req.query.title;
    var leader_name = "";
    var member2_name = "";
    var member3_name = "";
    var supervisor_email = req.query.supervisorEmail;
    var cosupervisor_email = req.query.coSupervisorEmail;
    var leader_email = req.query.member1Email;
    var member2_email = req.query.member2Email;
    var member3_email = req.query.member3Email;
    var leader_Marks = req.query.member1Mark;
    var Member2_Marks = req.query.member2Mark;
    var Member3_Marks = req.query.member3Mark;
    var Jury1_Name = req.query.evaluator;
    var Jury2_Name = req.query.coevaluator;
    var submitted_by = req.query.submitted_by;

    db.execute("INSERT INTO fyp2_final_evaluation_external (ID, Project_Title, leader_name, member2_name, member3_name, supervisor_email, cosupervisor_email, leader_email, member2_email, member3_email, leader_Marks, Member2_Marks, Member3_Marks, Jury1_Name, Jury2_Name, submitted_by ) VALUES (' ', '" + Project_Title + "' ,'" + leader_name + "','" + member2_name + "','" + member3_name + "','" + supervisor_email + "','" + cosupervisor_email + "','" + leader_email + "','" + member2_email + "','" + member3_email + "','" + leader_Marks + "','" + Member2_Marks + "','" + Member3_Marks + "','" + Jury1_Name + "','" + Jury2_Name + "','" + submitted_by + "') ")
        .then(results => {
            db.execute(" UPDATE user set fyp2_final_marks_external='" + leader_Marks + "' where Email='" + leader_email + "'  ")
                .then(results => {
                    db.execute(" UPDATE user set fyp2_final_marks_external='" + Member2_Marks + "' where Email='" + member2_email + "'  ")
                        .then(results => {
                            db.execute(" UPDATE user set fyp2_final_marks_external='" + Member3_Marks + "' where Email='" + member3_email + "'  ")
                                .then(results => {
                                    res.send('Inserted');
                                })
                        })
                })
        })
});

app.use('/jurysubmitted_list', (req, res) => {
    var email = req.query.Email;

    db.execute("Select Project_Title,leader_email, supervisor_email from fyp2_final_evaluation_external where submitted_by='" + email + "' ")
        .then(results => {
            res.send(results[0])
        })
        .catch(err => {
            console.log(err)
        });
});