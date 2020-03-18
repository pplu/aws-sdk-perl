package Paws::Pinpoint::DefaultPushNotificationMessage;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has Body => (is => 'ro', isa => 'Str');
  has Data => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__string');
  has SilentPush => (is => 'ro', isa => 'Bool');
  has Substitutions => (is => 'ro', isa => 'Paws::Pinpoint::MapOfListOf__string');
  has Title => (is => 'ro', isa => 'Str');
  has Url => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::DefaultPushNotificationMessage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::DefaultPushNotificationMessage object:

  $service_obj->Method(Att1 => { Action => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::DefaultPushNotificationMessage object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Specifies the default settings and content for a push notification
that's sent directly to an endpoint.

=head1 ATTRIBUTES


=head2 Action => Str

  The default action to occur if a recipient taps the push notification.
Valid values are:

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

  The default body of the notification message.


=head2 Data => L<Paws::Pinpoint::MapOf__string>

  The JSON data payload to use for the default push notification, if the
notification is a silent push notification. This payload is added to
the data.pinpoint.jsonBody object of the notification.


=head2 SilentPush => Bool

  Specifies whether the default notification is a silent push
notification, which is a push notification that doesn't display on a
recipient's device. Silent push notifications can be used for cases
such as updating an app's configuration or delivering messages to an
in-app notification center.


=head2 Substitutions => L<Paws::Pinpoint::MapOfListOf__string>

  The default message variables to use in the notification message. You
can override the default variables with individual address variables.


=head2 Title => Str

  The default title to display above the notification message on a
recipient's device.


=head2 Url => Str

  The default URL to open in a recipient's default mobile browser, if a
recipient taps the push notification and the value of the Action
property is URL.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

