# Generated from default/object.tt
package Paws::Pinpoint::Message;
  use Moo;
  use Types::Standard qw/Str Bool Int/;
  use Paws::Pinpoint::Types qw//;
  has Action => (is => 'ro', isa => Str);
  has Body => (is => 'ro', isa => Str);
  has ImageIconUrl => (is => 'ro', isa => Str);
  has ImageSmallIconUrl => (is => 'ro', isa => Str);
  has ImageUrl => (is => 'ro', isa => Str);
  has JsonBody => (is => 'ro', isa => Str);
  has MediaUrl => (is => 'ro', isa => Str);
  has RawContent => (is => 'ro', isa => Str);
  has SilentPush => (is => 'ro', isa => Bool);
  has TimeToLive => (is => 'ro', isa => Int);
  has Title => (is => 'ro', isa => Str);
  has Url => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ImageSmallIconUrl' => {
                                        'type' => 'Str'
                                      },
               'MediaUrl' => {
                               'type' => 'Str'
                             },
               'ImageIconUrl' => {
                                   'type' => 'Str'
                                 },
               'ImageUrl' => {
                               'type' => 'Str'
                             },
               'TimeToLive' => {
                                 'type' => 'Int'
                               },
               'Title' => {
                            'type' => 'Str'
                          },
               'RawContent' => {
                                 'type' => 'Str'
                               },
               'Action' => {
                             'type' => 'Str'
                           },
               'Url' => {
                          'type' => 'Str'
                        },
               'JsonBody' => {
                               'type' => 'Str'
                             },
               'SilentPush' => {
                                 'type' => 'Bool'
                               },
               'Body' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }


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

Specifies the content and settings for a push notification that's sent
to recipients of a campaign.

=head1 ATTRIBUTES


=head2 Action => Str

  The action to occur if a recipient taps the push notification. Valid
values are:

=over

=item *

OPEN_APP - Your app opens or it becomes the foreground app if it was
sent to the background. This is the default action.

=item *

DEEP_LINK - Your app opens and displays a designated user interface in
the app. This setting uses the deep-linking features of iOS and
Android.

=item *

URL - The default mobile browser on the recipient's device opens and
loads the web page at a URL that you specify.

=back



=head2 Body => Str

  The body of the notification message. The maximum number of characters
is 200.


=head2 ImageIconUrl => Str

  The URL of the image to display as the push-notification icon, such as
the icon for the app.


=head2 ImageSmallIconUrl => Str

  The URL of the image to display as the small, push-notification icon,
such as a small version of the icon for the app.


=head2 ImageUrl => Str

  The URL of an image to display in the push notification.


=head2 JsonBody => Str

  The JSON payload to use for a silent push notification.


=head2 MediaUrl => Str

  The URL of the image or video to display in the push notification.


=head2 RawContent => Str

  The raw, JSON-formatted string to use as the payload for the
notification message. This value overrides other values for the
message.


=head2 SilentPush => Bool

  Specifies whether the notification is a silent push notification, which
is a push notification that doesn't display on a recipient's device.
Silent push notifications can be used for cases such as updating an
app's configuration, displaying messages in an in-app message center,
or supporting phone home functionality.


=head2 TimeToLive => Int

  The number of seconds that the push-notification service should keep
the message, if the service is unable to deliver the notification the
first time. This value is converted to an expiration value when it's
sent to a push-notification service. If this value is 0, the service
treats the notification as if it expires immediately and the service
doesn't store or try to deliver the notification again.

This value doesn't apply to messages that are sent through the Amazon
Device Messaging (ADM) service.


=head2 Title => Str

  The title to display above the notification message on a recipient's
device.


=head2 Url => Str

  The URL to open in a recipient's default mobile browser, if a recipient
taps the push notification and the value of the Action property is URL.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

