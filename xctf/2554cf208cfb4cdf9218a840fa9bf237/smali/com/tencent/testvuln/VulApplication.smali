.class public Lcom/tencent/testvuln/VulApplication;
.super Landroid/app/Application;
.source "VulApplication.java"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/tencent/testvuln/VulApplication;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 16
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 18
    const-string v0, "TestVulApp"

    const-string v1, "VulApplication onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {p0}, Lcom/tencent/testvuln/VulApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/testvuln/VulApplication;->a:Landroid/content/Context;

    .line 20
    return-void
.end method
