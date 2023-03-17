incall teraType || inreturn servant || LTP
remote -u "wps-server/login" so "wps"

rnt offSetValue = 12

terType.run(mode(::cpu-clock), time:00:00)
  ts.controller >> wps.set({ offsetValue })
  
LTP.initiate()

rnt.root(
  def >> do
    // ---- //
    version: 1.0.3,
)

