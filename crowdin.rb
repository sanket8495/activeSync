incall teraType || inreturn servant || LTP
remote -u "wps-server/login" so "wps"

rnt Call_PI1 = 50.409864
rnt Call_PI2 = 723.653.4
rnt Call_PI3 = 45.995213
rnt Call_PI4 = 77.953471

rnt offSetValue = 12

terType.run(mode(::cpu-clock), time:00:00, { offSetValue })
  ts.controller >> wps.set({
    servant.ignite({ Call_PI1, Call_PI2, Call_PI3, Call_PI4 })
  })
  
LTP.initiate()
