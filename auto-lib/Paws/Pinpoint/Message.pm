package Paws::Pinpoint::Message;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has Body => (is => 'ro', isa => 'Str');
  has ImageIconUrl => (is => 'ro', isa => 'Str');
  has ImageSmallIconUrl => (is => 'ro', isa => 'Str');
  has ImageUrl => (is => 'ro', isa => 'Str');
  has JsonBody => (is => 'ro', isa => 'Str');
  has MediaUrl => (is => 'ro', isa => 'Str');
  has RawContent => (is => 'ro', isa => 'Str');
  has SilentPush => (is => 'ro', isa => 'Bool');
  has TimeToLive => (is => 'ro', isa => 'Int');
  has Title => (is => 'ro', isa => 'Str');
  has Url => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::Message

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::Message object:

  $service_obj->Method(Att1 => { Action => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::Message object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Message to send

=head1 ATTRIBUTES


=head2 Action => Str

  The action that occurs if the user taps a push notification delivered
by the campaign: OPEN_APP - Your app launches, or it becomes the
foreground app if it has been sent to the background. This is the
default action. DEEP_LINK - Uses deep linking features in iOS and
Android to open your app and display a designated user interface within
the app. URL - The default mobile browser on the user's device launches
and opens a web page at the URL you specify.


=head2 Body => Str

  The message body. Can include up to 140 characters.


=head2 ImageIconUrl => Str

  The URL that points to the icon image for the push notification icon,
for example, the app icon.


=head2 ImageSmallIconUrl => Str

  The URL that points to the small icon image for the push notification
icon, for example, the app icon.


=head2 ImageUrl => Str

  The URL that points to an image used in the push notification.


=head2 JsonBody => Str

  The JSON payload used for a silent push.


=head2 MediaUrl => Str

  A URL that refers to the location of an image or video that you want to
display in the push notification.


=head2 RawContent => Str

  The Raw JSON formatted string to be used as the payload. This value
overrides the message.


=head2 SilentPush => Bool

  Indicates if the message should display on the users device. Silent
pushes can be used for Remote Configuration and Phone Home use cases.


=head2 TimeToLive => Int

  This parameter specifies how long (in seconds) the message should be
kept if the service is unable to deliver the notification the first
time. If the value is 0, it treats the notification as if it expires
immediately and does not store the notification or attempt to redeliver
it. This value is converted to the expiration field when sent to the
service. It only applies to APNs and GCM


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

