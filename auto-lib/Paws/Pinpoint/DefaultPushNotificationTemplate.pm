package Paws::Pinpoint::DefaultPushNotificationTemplate;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has Body => (is => 'ro', isa => 'Str');
  has Sound => (is => 'ro', isa => 'Str');
  has Title => (is => 'ro', isa => 'Str');
  has Url => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::DefaultPushNotificationTemplate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::DefaultPushNotificationTemplate object:

  $service_obj->Method(Att1 => { Action => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::DefaultPushNotificationTemplate object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Specifies the default settings and content for a message template that
can be used in messages that are sent through a push notification
channel.

=head1 ATTRIBUTES


=head2 Action => Str

  The action to occur if a recipient taps a push notification that's
based on the message template. Valid values are:

=over

=item *

OPEN_APP - Your app opens or it becomes the foreground app if it was
sent to the background. This is the default action.

=item *

DEEP_LINK - Your app opens and displays a designated user interface in
the app. This setting uses the deep-linking features of the iOS and
Android platforms.

=item *

URL - The default mobile browser on the recipient's device opens and
loads the web page at a URL that you specify.

=back



=head2 Body => Str

  The message body to use in push notifications that are based on the
message template.


=head2 Sound => Str

  The sound to play when a recipient receives a push notification that's
based on the message template. You can use the default stream or
specify the file name of a sound resource that's bundled in your app.
On an Android platform, the sound file must reside in /res/raw/.

For an iOS platform, this value is the key for the name of a sound file
in your app's main bundle or the Library/Sounds folder in your app's
data container. If the sound file can't be found or you specify default
for the value, the system plays the default alert sound.


=head2 Title => Str

  The title to use in push notifications that are based on the message
template. This title appears above the notification message on a
recipient's device.


=head2 Url => Str

  The URL to open in a recipient's default mobile browser, if a recipient
taps a push notification that's based on the message template and the
value of the Action property is URL.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

