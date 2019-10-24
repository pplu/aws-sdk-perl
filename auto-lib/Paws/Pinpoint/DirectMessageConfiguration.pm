# Generated from default/object.tt
package Paws::Pinpoint::DirectMessageConfiguration;
  use Moo;
  use Types::Standard qw//;
  use Paws::Pinpoint::Types qw/Pinpoint_VoiceMessage Pinpoint_ADMMessage Pinpoint_DefaultMessage Pinpoint_SMSMessage Pinpoint_BaiduMessage Pinpoint_GCMMessage Pinpoint_DefaultPushNotificationMessage Pinpoint_APNSMessage Pinpoint_EmailMessage/;
  has ADMMessage => (is => 'ro', isa => Pinpoint_ADMMessage);
  has APNSMessage => (is => 'ro', isa => Pinpoint_APNSMessage);
  has BaiduMessage => (is => 'ro', isa => Pinpoint_BaiduMessage);
  has DefaultMessage => (is => 'ro', isa => Pinpoint_DefaultMessage);
  has DefaultPushNotificationMessage => (is => 'ro', isa => Pinpoint_DefaultPushNotificationMessage);
  has EmailMessage => (is => 'ro', isa => Pinpoint_EmailMessage);
  has GCMMessage => (is => 'ro', isa => Pinpoint_GCMMessage);
  has SMSMessage => (is => 'ro', isa => Pinpoint_SMSMessage);
  has VoiceMessage => (is => 'ro', isa => Pinpoint_VoiceMessage);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GCMMessage' => {
                                 'class' => 'Paws::Pinpoint::GCMMessage',
                                 'type' => 'Pinpoint_GCMMessage'
                               },
               'EmailMessage' => {
                                   'class' => 'Paws::Pinpoint::EmailMessage',
                                   'type' => 'Pinpoint_EmailMessage'
                                 },
               'VoiceMessage' => {
                                   'class' => 'Paws::Pinpoint::VoiceMessage',
                                   'type' => 'Pinpoint_VoiceMessage'
                                 },
               'APNSMessage' => {
                                  'class' => 'Paws::Pinpoint::APNSMessage',
                                  'type' => 'Pinpoint_APNSMessage'
                                },
               'DefaultMessage' => {
                                     'class' => 'Paws::Pinpoint::DefaultMessage',
                                     'type' => 'Pinpoint_DefaultMessage'
                                   },
               'BaiduMessage' => {
                                   'class' => 'Paws::Pinpoint::BaiduMessage',
                                   'type' => 'Pinpoint_BaiduMessage'
                                 },
               'DefaultPushNotificationMessage' => {
                                                     'class' => 'Paws::Pinpoint::DefaultPushNotificationMessage',
                                                     'type' => 'Pinpoint_DefaultPushNotificationMessage'
                                                   },
               'ADMMessage' => {
                                 'class' => 'Paws::Pinpoint::ADMMessage',
                                 'type' => 'Pinpoint_ADMMessage'
                               },
               'SMSMessage' => {
                                 'class' => 'Paws::Pinpoint::SMSMessage',
                                 'type' => 'Pinpoint_SMSMessage'
                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::DirectMessageConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::DirectMessageConfiguration object:

  $service_obj->Method(Att1 => { ADMMessage => $value, ..., VoiceMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::DirectMessageConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ADMMessage

=head1 DESCRIPTION

Specifies the settings and content for the default message and any
default messages that you tailored for specific channels.

=head1 ATTRIBUTES


=head2 ADMMessage => Pinpoint_ADMMessage

  The default push notification message for the ADM (Amazon Device
Messaging) channel. This message overrides the default push
notification message (DefaultPushNotificationMessage).


=head2 APNSMessage => Pinpoint_APNSMessage

  The default push notification message for the APNs (Apple Push
Notification service) channel. This message overrides the default push
notification message (DefaultPushNotificationMessage).


=head2 BaiduMessage => Pinpoint_BaiduMessage

  The default push notification message for the Baidu (Baidu Cloud Push)
channel. This message overrides the default push notification message
(DefaultPushNotificationMessage).


=head2 DefaultMessage => Pinpoint_DefaultMessage

  The default message body for all channels.


=head2 DefaultPushNotificationMessage => Pinpoint_DefaultPushNotificationMessage

  The default push notification message for all push channels.


=head2 EmailMessage => Pinpoint_EmailMessage

  The default message for the email channel. This message overrides the
default message (DefaultMessage).


=head2 GCMMessage => Pinpoint_GCMMessage

  The default push notification message for the GCM channel, which is
used to send notifications through the Firebase Cloud Messaging (FCM),
formerly Google Cloud Messaging (GCM), service. This message overrides
the default push notification message (DefaultPushNotificationMessage).


=head2 SMSMessage => Pinpoint_SMSMessage

  The default message for the SMS channel. This message overrides the
default message (DefaultMessage).


=head2 VoiceMessage => Pinpoint_VoiceMessage

  The default message for the voice channel. This message overrides the
default message (DefaultMessage).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

