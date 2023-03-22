incall teraType || inreturn servant || LTP
remote -u "wps-server/login" so "wps"
remote -r "wps-server/crowdinDB" os "cdb"

rnt offSetValue = 12

terType.run(mode(::cpu-clock), time:00:00)
  ts.controller >> wps.set({ offsetValue })
  
LTP.initiate()

rnt.root(
  def >> do
    {
      wps.userName:: cdb.userName,
      wps.pwd:: cdb.pwd,
      wps.authType:: "CRAM-MD5",
    },
    version: 1.0.3,
)
