package Paws::Pinpoint::ADMMessage;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has Body => (is => 'ro', isa => 'Str');
  has ConsolidationKey => (is => 'ro', isa => 'Str');
  has Data => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__string');
  has ExpiresAfter => (is => 'ro', isa => 'Str');
  has IconReference => (is => 'ro', isa => 'Str');
  has ImageIconUrl => (is => 'ro', isa => 'Str');
  has ImageUrl => (is => 'ro', isa => 'Str');
  has MD5 => (is => 'ro', isa => 'Str');
  has RawContent => (is => 'ro', isa => 'Str');
  has SilentPush => (is => 'ro', isa => 'Bool');
  has SmallImageIconUrl => (is => 'ro', isa => 'Str');
  has Sound => (is => 'ro', isa => 'Str');
  has Substitutions => (is => 'ro', isa => 'Paws::Pinpoint::MapOfListOf__string');
  has Title => (is => 'ro', isa => 'Str');
  has Url => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ADMMessage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::ADMMessage object:

  $service_obj->Method(Att1 => { Action => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::ADMMessage object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

ADM Message.

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


=head2 Body => Str

  The message body of the notification.


=head2 ConsolidationKey => Str

  Optional. Arbitrary string used to indicate multiple messages are
logically the same and that ADM is allowed to drop previously enqueued
messages in favor of this one.


=head2 Data => L<Paws::Pinpoint::MapOf__string>

  The data payload used for a silent push. This payload is added to the
notifications' data.pinpoint.jsonBody' object


=head2 ExpiresAfter => Str

  Optional. Number of seconds ADM should retain the message if the device
is offline


=head2 IconReference => Str

  The icon image name of the asset saved in your application.


=head2 ImageIconUrl => Str

  The URL that points to an image used as the large icon to the
notification content view.


=head2 ImageUrl => Str

  The URL that points to an image used in the push notification.


=head2 MD5 => Str

  Optional. Base-64-encoded MD5 checksum of the data parameter. Used to
verify data integrity


=head2 RawContent => Str

  The Raw JSON formatted string to be used as the payload. This value
overrides the message.


=head2 SilentPush => Bool

  Indicates if the message should display on the users device. Silent
pushes can be used for Remote Configuration and Phone Home use cases.


=head2 SmallImageIconUrl => Str

  The URL that points to an image used as the small icon for the
notification which will be used to represent the notification in the
status bar and content view


=head2 Sound => Str

  Indicates a sound to play when the device receives the notification.
Supports default, or the filename of a sound resource bundled in the
app. Android sound files must reside in /res/raw/


=head2 Substitutions => L<Paws::Pinpoint::MapOfListOf__string>

  Default message substitutions. Can be overridden by individual address
substitutions.


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

