package Paws::Pinpoint::APNSMessage;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has APNSPushType => (is => 'ro', isa => 'Str');
  has Badge => (is => 'ro', isa => 'Int');
  has Body => (is => 'ro', isa => 'Str');
  has Category => (is => 'ro', isa => 'Str');
  has CollapseId => (is => 'ro', isa => 'Str');
  has Data => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__string');
  has MediaUrl => (is => 'ro', isa => 'Str');
  has PreferredAuthenticationMethod => (is => 'ro', isa => 'Str');
  has Priority => (is => 'ro', isa => 'Str');
  has RawContent => (is => 'ro', isa => 'Str');
  has SilentPush => (is => 'ro', isa => 'Bool');
  has Sound => (is => 'ro', isa => 'Str');
  has Substitutions => (is => 'ro', isa => 'Paws::Pinpoint::MapOfListOf__string');
  has ThreadId => (is => 'ro', isa => 'Str');
  has TimeToLive => (is => 'ro', isa => 'Int');
  has Title => (is => 'ro', isa => 'Str');
  has Url => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::APNSMessage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::APNSMessage object:

  $service_obj->Method(Att1 => { Action => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::APNSMessage object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Specifies the settings for a one-time message that's sent directly to
an endpoint through the APNs (Apple Push Notification service) channel.

=head1 ATTRIBUTES


=head2 Action => Str

  The action to occur if the recipient taps the push notification. Valid
values are:

=over

=item *

OPEN_APP - Your app opens or it becomes the foreground app if it was
sent to the background. This is the default action.

=item *

DEEP_LINK - Your app opens and displays a designated user interface in
the app. This setting uses the deep-linking features of the iOS
platform.

=item *

URL - The default mobile browser on the recipient's device opens and
loads the web page at a URL that you specify.

=back



=head2 APNSPushType => Str

  The type of push notification to send. Valid values are:

=over

=item *

alert - For a standard notification that's displayed on recipients'
devices and prompts a recipient to interact with the notification.

=item *

background - For a silent notification that delivers content in the
background and isn't displayed on recipients' devices.

=item *

complication - For a notification that contains update information for
an appE<rsquo>s complication timeline.

=item *

fileprovider - For a notification that signals changes to a File
Provider extension.

=item *

mdm - For a notification that tells managed devices to contact the MDM
server.

=item *

voip - For a notification that provides information about an incoming
VoIP call.

=back

Amazon Pinpoint specifies this value in the apns-push-type request
header when it sends the notification message to APNs. If you don't
specify a value for this property, Amazon Pinpoint sets the value to
alert or background automatically, based on the value that you specify
for the SilentPush or RawContent property of the message.

For more information about the apns-push-type request header, see
Sending Notification Requests to APNs
(https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/sending_notification_requests_to_apns)
on the Apple Developer website.


=head2 Badge => Int

  The key that indicates whether and how to modify the badge of your
app's icon when the recipient receives the push notification. If this
key isn't included in the dictionary, the badge doesn't change. To
remove the badge, set this value to 0.


=head2 Body => Str

  The body of the notification message.


=head2 Category => Str

  The key that indicates the notification type for the push notification.
This key is a value that's defined by the identifier property of one of
your app's registered categories.


=head2 CollapseId => Str

  An arbitrary identifier that, if assigned to multiple messages, APNs
uses to coalesce the messages into a single push notification instead
of delivering each message individually. This value can't exceed 64
bytes.

Amazon Pinpoint specifies this value in the apns-collapse-id request
header when it sends the notification message to APNs.


=head2 Data => L<Paws::Pinpoint::MapOf__string>

  The JSON payload to use for a silent push notification. This payload is
added to the data.pinpoint.jsonBody object of the notification.


=head2 MediaUrl => Str

  The URL of an image or video to display in the push notification.


=head2 PreferredAuthenticationMethod => Str

  The authentication method that you want Amazon Pinpoint to use when
authenticating with APNs, CERTIFICATE or TOKEN.


=head2 Priority => Str

  paraE<gt>5 - Low priority, the notification might be delayed, delivered
as part of a group, or throttled.

/listitemE<gt>

=over

=item *

10 - High priority, the notification is sent immediately. This is the
default value. A high priority notification should trigger an alert,
play a sound, or badge your app's icon on the recipient's device.

/paraE<gt>

Amazon Pinpoint specifies this value in the apns-priority request
header when it sends the notification message to APNs.

The equivalent values for Firebase Cloud Messaging (FCM), formerly
Google Cloud Messaging (GCM), are normal, for 5, and high, for 10. If
you specify an FCM value for this property, Amazon Pinpoint accepts and
converts the value to the corresponding APNs value.

=back



=head2 RawContent => Str

  The raw, JSON-formatted string to use as the payload for the
notification message. If specified, this value overrides all other
content for the message.

If you specify the raw content of an APNs push notification, the
message payload has to include the content-available key. The value of
the content-available key has to be an integer, and can only be 0 or 1.
If you're sending a standard notification, set the value of
content-available to 0. If you're sending a silent (background)
notification, set the value of content-available to 1. Additionally,
silent notification payloads can't include the alert, badge, or sound
keys. For more information, see Generating a Remote Notification
(https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/generating_a_remote_notification)
and Pushing Background Updates to Your App
(https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/pushing_background_updates_to_your_app)
on the Apple Developer website.


=head2 SilentPush => Bool

  Specifies whether the notification is a silent push notification. A
silent (or background) push notification isn't displayed on recipients'
devices. You can use silent push notifications to make small updates to
your app, or to display messages in an in-app message center.

Amazon Pinpoint uses this property to determine the correct value for
the apns-push-type request header when it sends the notification
message to APNs. If you specify a value of true for this property,
Amazon Pinpoint sets the value for the apns-push-type header field to
background.

If you specify the raw content of an APNs push notification, the
message payload has to include the content-available key. For silent
(background) notifications, set the value of content-available to 1.
Additionally, the message payload for a silent notification can't
include the alert, badge, or sound keys. For more information, see
Generating a Remote Notification
(https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/generating_a_remote_notification)
and Pushing Background Updates to Your App
(https://developer.apple.com/documentation/usernotifications/setting_up_a_remote_notification_server/pushing_background_updates_to_your_app)
on the Apple Developer website.

Apple has indicated that they will throttle "excessive" background
notifications based on current traffic volumes. To prevent your
notifications being throttled, Apple recommends that you send no more
than 3 silent push notifications to each recipient per hour.


=head2 Sound => Str

  The key for the sound to play when the recipient receives the push
notification. The value for this key is the name of a sound file in
your app's main bundle or the Library/Sounds folder in your app's data
container. If the sound file can't be found or you specify default for
the value, the system plays the default alert sound.


=head2 Substitutions => L<Paws::Pinpoint::MapOfListOf__string>

  The default message variables to use in the notification message. You
can override these default variables with individual address variables.


=head2 ThreadId => Str

  The key that represents your app-specific identifier for grouping
notifications. If you provide a Notification Content app extension, you
can use this value to group your notifications together.


=head2 TimeToLive => Int

  The amount of time, in seconds, that APNs should store and attempt to
deliver the push notification, if the service is unable to deliver the
notification the first time. If this value is 0, APNs treats the
notification as if it expires immediately and the service doesn't store
or try to deliver the notification again.

Amazon Pinpoint specifies this value in the apns-expiration request
header when it sends the notification message to APNs.


=head2 Title => Str

  The title to display above the notification message on the recipient's
device.


=head2 Url => Str

  The URL to open in the recipient's default mobile browser, if a
recipient taps the push notification and the value of the Action
property is URL.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

