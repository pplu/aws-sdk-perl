# Generated from default/object.tt
package Paws::Pinpoint::ADMMessage;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::Pinpoint::Types qw/Pinpoint_MapOf__string Pinpoint_MapOfListOf__string/;
  has Action => (is => 'ro', isa => Str);
  has Body => (is => 'ro', isa => Str);
  has ConsolidationKey => (is => 'ro', isa => Str);
  has Data => (is => 'ro', isa => Pinpoint_MapOf__string);
  has ExpiresAfter => (is => 'ro', isa => Str);
  has IconReference => (is => 'ro', isa => Str);
  has ImageIconUrl => (is => 'ro', isa => Str);
  has ImageUrl => (is => 'ro', isa => Str);
  has MD5 => (is => 'ro', isa => Str);
  has RawContent => (is => 'ro', isa => Str);
  has SilentPush => (is => 'ro', isa => Bool);
  has SmallImageIconUrl => (is => 'ro', isa => Str);
  has Sound => (is => 'ro', isa => Str);
  has Substitutions => (is => 'ro', isa => Pinpoint_MapOfListOf__string);
  has Title => (is => 'ro', isa => Str);
  has Url => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ExpiresAfter' => {
                                   'type' => 'Str'
                                 },
               'ImageUrl' => {
                               'type' => 'Str'
                             },
               'Title' => {
                            'type' => 'Str'
                          },
               'IconReference' => {
                                    'type' => 'Str'
                                  },
               'RawContent' => {
                                 'type' => 'Str'
                               },
               'Action' => {
                             'type' => 'Str'
                           },
               'MD5' => {
                          'type' => 'Str'
                        },
               'SilentPush' => {
                                 'type' => 'Bool'
                               },
               'Body' => {
                           'type' => 'Str'
                         },
               'Substitutions' => {
                                    'class' => 'Paws::Pinpoint::MapOfListOf__string',
                                    'type' => 'Pinpoint_MapOfListOf__string'
                                  },
               'ImageIconUrl' => {
                                   'type' => 'Str'
                                 },
               'SmallImageIconUrl' => {
                                        'type' => 'Str'
                                      },
               'Sound' => {
                            'type' => 'Str'
                          },
               'Url' => {
                          'type' => 'Str'
                        },
               'Data' => {
                           'class' => 'Paws::Pinpoint::MapOf__string',
                           'type' => 'Pinpoint_MapOf__string'
                         },
               'ConsolidationKey' => {
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

Specifies the settings for a one-time message that's sent directly to
an endpoint through the ADM (Amazon Device Messaging) channel.

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


=head2 ConsolidationKey => Str

  An arbitrary string that indicates that multiple messages are logically
the same and that Amazon Device Messaging (ADM) can drop previously
enqueued messages in favor of this message.


=head2 Data => Pinpoint_MapOf__string

  The JSON data payload to use for the push notification, if the
notification is a silent push notification. This payload is added to
the data.pinpoint.jsonBody object of the notification.


=head2 ExpiresAfter => Str

  The amount of time, in seconds, that ADM should store the message if
the recipient's device is offline. Amazon Pinpoint specifies this value
in the expiresAfter parameter when it sends the notification message to
ADM.


=head2 IconReference => Str

  The icon image name of the asset saved in your app.


=head2 ImageIconUrl => Str

  The URL of the large icon image to display in the content view of the
push notification.


=head2 ImageUrl => Str

  The URL of an image to display in the push notification.


=head2 MD5 => Str

  The base64-encoded, MD5 checksum of the value specified by the Data
property. ADM uses the MD5 value to verify the integrity of the data.


=head2 RawContent => Str

  The raw, JSON-formatted string to use as the payload for the
notification message. This value overrides the message.


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


=head2 Substitutions => Pinpoint_MapOfListOf__string

  The default message variables to use in the notification message. You
can override the default variables with individual address variables.


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

