.class Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;
.super Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransportControlsApi21"
.end annotation


# instance fields
.field protected final mControlsObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1964
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;-><init>()V

    .line 1965
    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    .line 1966
    return-void
.end method


# virtual methods
.method public fastForward()V
    .locals 1

    .prologue
    .line 2019
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->fastForward(Ljava/lang/Object;)V

    .line 2020
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 2004
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->pause(Ljava/lang/Object;)V

    .line 2005
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 1999
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->play(Ljava/lang/Object;)V

    .line 2000
    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 2059
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->playFromMediaId(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2061
    return-void
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 2065
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->playFromSearch(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2067
    return-void
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 2071
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2072
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify a non-empty Uri for playFromUri."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2075
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2076
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_URI"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2077
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2078
    const-string v1, "android.support.v4.media.session.action.PLAY_FROM_URI"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2079
    return-void
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 1970
    const-string v0, "android.support.v4.media.session.action.PREPARE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1971
    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1975
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1976
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1978
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1979
    return-void
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1983
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1984
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_QUERY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1986
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_SEARCH"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1987
    return-void
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1991
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1992
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_URI"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1993
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1994
    const-string v1, "android.support.v4.media.session.action.PREPARE_FROM_URI"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1995
    return-void
.end method

.method public rewind()V
    .locals 1

    .prologue
    .line 2024
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->rewind(Ljava/lang/Object;)V

    .line 2025
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .prologue
    .line 2014
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->seekTo(Ljava/lang/Object;J)V

    .line 2015
    return-void
.end method

.method public sendCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 2088
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    .line 2089
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2088
    invoke-static {v0, v1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->sendCustomAction(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2090
    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 2094
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->sendCustomAction(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2096
    return-void
.end method

.method public setRating(Landroid/support/v4/media/RatingCompat;)V
    .locals 2

    .prologue
    .line 2039
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 2040
    invoke-virtual {p1}, Landroid/support/v4/media/RatingCompat;->getRating()Ljava/lang/Object;

    move-result-object v0

    .line 2039
    :goto_0
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->setRating(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2041
    return-void

    .line 2040
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRepeatMode(I)V
    .locals 2

    .prologue
    .line 2045
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2046
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2047
    const-string v1, "android.support.v4.media.session.action.SET_REPEAT_MODE"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2048
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 2

    .prologue
    .line 2052
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2053
    const-string v1, "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE_ENABLED"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2054
    const-string v1, "android.support.v4.media.session.action.SET_SHUFFLE_MODE_ENABLED"

    invoke-virtual {p0, v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2055
    return-void
.end method

.method public skipToNext()V
    .locals 1

    .prologue
    .line 2029
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->skipToNext(Ljava/lang/Object;)V

    .line 2030
    return-void
.end method

.method public skipToPrevious()V
    .locals 1

    .prologue
    .line 2034
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->skipToPrevious(Ljava/lang/Object;)V

    .line 2035
    return-void
.end method

.method public skipToQueueItem(J)V
    .locals 1

    .prologue
    .line 2083
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->skipToQueueItem(Ljava/lang/Object;J)V

    .line 2084
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 2009
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21$TransportControls;->stop(Ljava/lang/Object;)V

    .line 2010
    return-void
.end method
