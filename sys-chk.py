import platform

osPlatform = str(platform.system())

if osPlatform == 'Windows' or 'win32':
  exec(open("win.cmd").read())
elif osPlatform == 'Darwin':
  exec(open("mac.sh").read())
elif osPlatform == 'Linux' or 'Linux2':
  print('Linux is not yet supported.')
else:
  print('Uncompatible OS.')
