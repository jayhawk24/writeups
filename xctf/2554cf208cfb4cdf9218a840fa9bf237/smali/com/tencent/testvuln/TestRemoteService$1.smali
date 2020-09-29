.class Lcom/tencent/testvuln/TestRemoteService$1;
.super Lcom/tencent/testvuln/b$a;
.source "TestRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/testvuln/TestRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/testvuln/TestRemoteService;


# direct methods
.method constructor <init>(Lcom/tencent/testvuln/TestRemoteService;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/tencent/testvuln/TestRemoteService$1;->a:Lcom/tencent/testvuln/TestRemoteService;

    invoke-direct {p0}, Lcom/tencent/testvuln/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 17
    invoke-static {}, Lcom/tencent/testvuln/TestRemoteService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "called RemoteService someOperate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v0, p0, Lcom/tencent/testvuln/TestRemoteService$1;->a:Lcom/tencent/testvuln/TestRemoteService;

    const-string v1, "test"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/testvuln/TestRemoteService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 21
    const-string v1, "ilil"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    const-string v2, "lili"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
