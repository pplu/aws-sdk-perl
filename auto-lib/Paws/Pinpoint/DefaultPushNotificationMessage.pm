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

Default Push Notification Message.

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


=head2 Data => L<Paws::Pinpoint::MapOf__string>

  The data payload used for a silent push. This payload is added to the
notifications' data.pinpoint.jsonBody' object


=head2 SilentPush => Bool

  Indicates if the message should display on the recipient's device. You
can use silent pushes for remote configuration or to deliver messages
to in-app notification centers.


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

