@ECHO OFF
@DEL /F /S /Q  public
@DEL /F /S /Q  hugo_build.lock

@hugo serve --tlsAuto