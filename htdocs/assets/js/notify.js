var OneSignal = window.OneSignal || [];
OneSignal.push(["init", {
  appId: "31ecb748-dac7-460a-8d0a-ca93a6850775",
  autoRegister: false,
  notifyButton: {
    enable: true, /* Required to use the Subscription Bell */
  /* SUBSCRIPTION BELL CUSTOMIZATIONS START HERE */
    size: 'medium', /* One of 'small', 'medium', or 'large' */
    theme: 'default', /* One of 'default' (red-white) or 'inverse" (white-red) */
    position: 'bottom-left', /* Either 'bottom-left' or 'bottom-right' */
    offset: {
        bottom: '15px',
        left: '15px', /* Only applied if bottom-left */
        //right: '0px' /* Only applied if bottom-right */
    },
    prenotify: true, /* Show an icon with 1 unread message for first-time site visitors */
    showCredit: false, /* Hide the OneSignal logo */
    text: {
        'tip.state.unsubscribed': "訂閱SGlory戰隊推播通知",
        'tip.state.subscribed': "您已經訂閱接收SGlory戰隊推播通知",
        'tip.state.blocked': "You've blocked notifications",
        'message.prenotify': "點擊訂閱SGlory戰隊推播通知",
        'message.action.subscribed': "感謝您訂閱SGlory戰隊推播通知",
        'message.action.resubscribed': "您已再次訂閱接收SGlory戰隊推播通知",
        'message.action.unsubscribed': "您將不會再收到SGlory戰隊推播通知",
        'dialog.main.title': "管理SGlory推播通知",
        'dialog.main.button.subscribe': "訂閱",
        'dialog.main.button.unsubscribe': "取消訂閱",
        'dialog.blocked.title': "Unblock Notifications",
        'dialog.blocked.message': "Follow these instructions to allow notifications:",
    }/*,
    colors: { // Customize the colors of the main button and dialog popup button
       'circle.background': 'rgb(84,110,123)',
       'circle.foreground': 'white',
       'badge.background': 'rgb(84,110,123)',
       'badge.foreground': 'white',
       'badge.bordercolor': 'white',
       'pulse.color': 'white',
       'dialog.button.background.hovering': 'rgb(77, 101, 113)',
       'dialog.button.background.active': 'rgb(70, 92, 103)',
       'dialog.button.background': 'rgb(84,110,123)',
       'dialog.button.foreground': 'white'
     },*/
    /* HIDE SUBSCRIPTION BELL WHEN USER SUBSCRIBED */
    /*displayPredicate: function() {
        return OneSignal.isPushNotificationsEnabled()
            .then(function(isPushEnabled) {
                return !isPushEnabled;
            });
    }*/
  },
  welcomeNotification: {
    "title": "Supreme Glory Clan",
    "message": "感謝您訂閱SGlory戰隊推播訊息！",
    // "url": "" /* Leave commented for the notification to not open a window on Chrome and Firefox (on Safari, it opens to your webpage) */
  },
  promptOptions: {
    /* actionMessage limited to 90 characters */
    actionMessage: "我們想要推播最新SGlory戰隊的資訊和更新給您",
    /* acceptButtonText limited to 15 characters */
    acceptButtonText: "允許",
    /* cancelButtonText limited to 15 characters */
    cancelButtonText: "不用了 謝謝"
  }
}]);


window.OneSignal = window.OneSignal || [];

/* In milliseconds, time to wait before prompting user. This time is relative to right after the user presses <ENTER> on the address bar and navigates to your page */
var notificationPromptDelay = 50000;

/* Why use .push? See: http://stackoverflow.com/a/38466780/555547 */
window.OneSignal.push(function() {
    /* Use navigation timing to find out when the page actually loaded instead of using setTimeout() only which can be delayed by script execution */
    var navigationStart = window.performance.timing.navigationStart;

    /* Get current time */
    var timeNow = Date.now();

    /* Prompt the user if enough time has elapsed */
    setTimeout(promptAndSubscribeUser, Math.max(notificationPromptDelay - (timeNow - navigationStart), 0));
});

function promptAndSubscribeUser() {
    window.OneSignal.isPushNotificationsEnabled(function(isEnabled) {
        if (!isEnabled) {
          /* Want to trigger different permission messages? See: https://documentation.onesignal.com/docs/permission-requests#section-onesignal-permission-messages */
            window.OneSignal.showHttpPrompt();
        }
    });
}