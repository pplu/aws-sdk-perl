package Paws::Pinpoint::APNSMessage;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
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

APNS Message.

=head1 ATTRIBUTES


=head2 Action => Str

  The action that occurs if the user taps a push notification delivered
by the campaign: OPEN_APP - Your app launches, or it becomes the
foreground app if it has been sent to the background. This is the
default action. DEEP_LINK - Uses deep linking features in iOS and
Android to open your app and display a designated user interface within
the app. URL - The default mobile browser on the user's device launches
and opens a web page at the URL you specify. Possible values include:
OPEN_APP | DEEP_LINK | URL


=head2 Badge => Int

  Include this key when you want the system to modify the badge of your
app icon. If this key is not included in the dictionary, the badge is
not changed. To remove the badge, set the value of this key to 0.


=head2 Body => Str

  The message body of the notification.


=head2 Category => Str

  Provide this key with a string value that represents the notification's
type. This value corresponds to the value in the identifier property of
one of your app's registered categories.


=head2 CollapseId => Str

  An ID that, if assigned to multiple messages, causes APNs to coalesce
the messages into a single push notification instead of delivering each
message individually. The value must not exceed 64 bytes. Amazon
Pinpoint uses this value to set the apns-collapse-id request header
when it sends the message to APNs.


=head2 Data => L<Paws::Pinpoint::MapOf__string>

  The data payload used for a silent push. This payload is added to the
notifications' data.pinpoint.jsonBody' object


=head2 MediaUrl => Str

  A URL that refers to the location of an image or video that you want to
display in the push notification.


=head2 PreferredAuthenticationMethod => Str

  The preferred authentication method, either "CERTIFICATE" or "TOKEN"


=head2 Priority => Str

  The message priority. Amazon Pinpoint uses this value to set the
apns-priority request header when it sends the message to APNs. Accepts
the following values: "5" - Low priority. Messages might be delayed,
delivered in groups, and throttled. "10" - High priority. Messages are
sent immediately. High priority messages must cause an alert, sound, or
badge on the receiving device. The default value is "10". The
equivalent values for FCM or GCM messages are "normal" and "high".
Amazon Pinpoint accepts these values for APNs messages and converts
them. For more information about the apns-priority parameter, see
Communicating with APNs in the APNs Local and Remote Notification
Programming Guide.


=head2 RawContent => Str

  The Raw JSON formatted string to be used as the payload. This value
overrides the message.


=head2 SilentPush => Bool

  Indicates if the message should display on the users device. Silent
pushes can be used for Remote Configuration and Phone Home use cases.


=head2 Sound => Str

  Include this key when you want the system to play a sound. The value of
this key is the name of a sound file in your app's main bundle or in
the Library/Sounds folder of your app's data container. If the sound
file cannot be found, or if you specify defaultfor the value, the
system plays the default alert sound.


=head2 Substitutions => L<Paws::Pinpoint::MapOfListOf__string>

  Default message substitutions. Can be overridden by individual address
substitutions.


=head2 ThreadId => Str

  Provide this key with a string value that represents the app-specific
identifier for grouping notifications. If you provide a Notification
Content app extension, you can use this value to group your
notifications together.


=head2 TimeToLive => Int

  The length of time (in seconds) that APNs stores and attempts to
deliver the message. If the value is 0, APNs does not store the message
or attempt to deliver it more than once. Amazon Pinpoint uses this
value to set the apns-expiration request header when it sends the
message to APNs.


=head2 Title => Str

  The message title that displays above the message on the user's device.


=head2 Url => Str

  The URL to open in the user's mobile browser. Used if the value for
Action is URL.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

