package Paws::Pinpoint::GCMMessage;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has Body => (is => 'ro', isa => 'Str');
  has CollapseKey => (is => 'ro', isa => 'Str');
  has Data => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__string');
  has IconReference => (is => 'ro', isa => 'Str');
  has ImageIconUrl => (is => 'ro', isa => 'Str');
  has ImageUrl => (is => 'ro', isa => 'Str');
  has Priority => (is => 'ro', isa => 'Str');
  has RawContent => (is => 'ro', isa => 'Str');
  has RestrictedPackageName => (is => 'ro', isa => 'Str');
  has SilentPush => (is => 'ro', isa => 'Bool');
  has SmallImageIconUrl => (is => 'ro', isa => 'Str');
  has Sound => (is => 'ro', isa => 'Str');
  has Substitutions => (is => 'ro', isa => 'Paws::Pinpoint::MapOfListOf__string');
  has TimeToLive => (is => 'ro', isa => 'Int');
  has Title => (is => 'ro', isa => 'Str');
  has Url => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GCMMessage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::GCMMessage object:

  $service_obj->Method(Att1 => { Action => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::GCMMessage object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Specifies the settings for a one-time message that's sent directly to
an endpoint through the GCM channel. The GCM channel enables Amazon
Pinpoint to send messages to the Firebase Cloud Messaging (FCM),
formerly Google Cloud Messaging (GCM), service.

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
the app. This action uses the deep-linking features of the Android
platform.

=item *

URL - The default mobile browser on the recipient's device opens and
loads the web page at a URL that you specify.

=back



=head2 Body => Str

  The body of the notification message.


=head2 CollapseKey => Str

  An arbitrary string that identifies a group of messages that can be
collapsed to ensure that only the last message is sent when delivery
can resume. This helps avoid sending too many instances of the same
messages when the recipient's device comes online again or becomes
active.

Amazon Pinpoint specifies this value in the Firebase Cloud Messaging
(FCM) collapse_key parameter when it sends the notification message to
FCM.


=head2 Data => L<Paws::Pinpoint::MapOf__string>

  The JSON data payload to use for the push notification, if the
notification is a silent push notification. This payload is added to
the data.pinpoint.jsonBody object of the notification.


=head2 IconReference => Str

  The icon image name of the asset saved in your app.


=head2 ImageIconUrl => Str

  The URL of the large icon image to display in the content view of the
push notification.


=head2 ImageUrl => Str

  The URL of an image to display in the push notification.


=head2 Priority => Str

  paraE<gt>normal - The notification might be delayed. Delivery is
optimized for battery usage on the recipient's device. Use this value
unless immediate delivery is required.

/listitemE<gt>

=over

=item *

high - The notification is sent immediately and might wake a sleeping
device.

/paraE<gt>

Amazon Pinpoint specifies this value in the FCM priority parameter when
it sends the notification message to FCM.

The equivalent values for Apple Push Notification service (APNs) are 5,
for normal, and 10, for high. If you specify an APNs value for this
property, Amazon Pinpoint accepts and converts the value to the
corresponding FCM value.

=back



=head2 RawContent => Str

  The raw, JSON-formatted string to use as the payload for the
notification message. This value overrides the message.


=head2 RestrictedPackageName => Str

  The package name of the application where registration tokens must
match in order for the recipient to receive the message.


=head2 SilentPush => Bool

  Specifies whether the notification is a silent push notification, which
is a push notification that doesn't display on a recipient's device.
Silent push notifications can be used for cases such as updating an
app's configuration or supporting phone home functionality.


=head2 SmallImageIconUrl => Str

  The URL of the small icon image to display in the status bar and the
content view of the push notification.


=head2 Sound => Str

  The sound to play when the recipient receives the push notification.
You can use the default stream or specify the file name of a sound
resource that's bundled in your app. On an Android platform, the sound
file must reside in /res/raw/.


=head2 Substitutions => L<Paws::Pinpoint::MapOfListOf__string>

  The default message variables to use in the notification message. You
can override the default variables with individual address variables.


=head2 TimeToLive => Int

  The amount of time, in seconds, that FCM should store and attempt to
deliver the push notification, if the service is unable to deliver the
notification the first time. If you don't specify this value, FCM
defaults to the maximum value, which is 2,419,200 seconds (28 days).

Amazon Pinpoint specifies this value in the FCM time_to_live parameter
when it sends the notification message to FCM.


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

