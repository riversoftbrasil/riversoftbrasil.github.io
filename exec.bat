@ECHO OFF
@hugo mod clean
@DEL /F /S /Q  public
@DEL  .hugo_build.lock

@hugo serve --tlsAuto