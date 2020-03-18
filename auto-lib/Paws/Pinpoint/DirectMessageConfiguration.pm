package Paws::Pinpoint::DirectMessageConfiguration;
  use Moose;
  has ADMMessage => (is => 'ro', isa => 'Paws::Pinpoint::ADMMessage');
  has APNSMessage => (is => 'ro', isa => 'Paws::Pinpoint::APNSMessage');
  has BaiduMessage => (is => 'ro', isa => 'Paws::Pinpoint::BaiduMessage');
  has DefaultMessage => (is => 'ro', isa => 'Paws::Pinpoint::DefaultMessage');
  has DefaultPushNotificationMessage => (is => 'ro', isa => 'Paws::Pinpoint::DefaultPushNotificationMessage');
  has EmailMessage => (is => 'ro', isa => 'Paws::Pinpoint::EmailMessage');
  has GCMMessage => (is => 'ro', isa => 'Paws::Pinpoint::GCMMessage');
  has SMSMessage => (is => 'ro', isa => 'Paws::Pinpoint::SMSMessage');
  has VoiceMessage => (is => 'ro', isa => 'Paws::Pinpoint::VoiceMessage');

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


=head2 ADMMessage => L<Paws::Pinpoint::ADMMessage>

  The default push notification message for the ADM (Amazon Device
Messaging) channel. This message overrides the default push
notification message (DefaultPushNotificationMessage).


=head2 APNSMessage => L<Paws::Pinpoint::APNSMessage>

  The default push notification message for the APNs (Apple Push
Notification service) channel. This message overrides the default push
notification message (DefaultPushNotificationMessage).


=head2 BaiduMessage => L<Paws::Pinpoint::BaiduMessage>

  The default push notification message for the Baidu (Baidu Cloud Push)
channel. This message overrides the default push notification message
(DefaultPushNotificationMessage).


=head2 DefaultMessage => L<Paws::Pinpoint::DefaultMessage>

  The default message for all channels.


=head2 DefaultPushNotificationMessage => L<Paws::Pinpoint::DefaultPushNotificationMessage>

  The default push notification message for all push notification
channels.


=head2 EmailMessage => L<Paws::Pinpoint::EmailMessage>

  The default message for the email channel. This message overrides the
default message (DefaultMessage).


=head2 GCMMessage => L<Paws::Pinpoint::GCMMessage>

  The default push notification message for the GCM channel, which is
used to send notifications through the Firebase Cloud Messaging (FCM),
formerly Google Cloud Messaging (GCM), service. This message overrides
the default push notification message (DefaultPushNotificationMessage).


=head2 SMSMessage => L<Paws::Pinpoint::SMSMessage>

  The default message for the SMS channel. This message overrides the
default message (DefaultMessage).


=head2 VoiceMessage => L<Paws::Pinpoint::VoiceMessage>

  The default message for the voice channel. This message overrides the
default message (DefaultMessage).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

