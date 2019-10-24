# Generated from default/object.tt
package Paws::Pinpoint::MessageConfiguration;
  use Moo;
  use Types::Standard qw//;
  use Paws::Pinpoint::Types qw/Pinpoint_Message Pinpoint_CampaignEmailMessage Pinpoint_CampaignSmsMessage/;
  has ADMMessage => (is => 'ro', isa => Pinpoint_Message);
  has APNSMessage => (is => 'ro', isa => Pinpoint_Message);
  has BaiduMessage => (is => 'ro', isa => Pinpoint_Message);
  has DefaultMessage => (is => 'ro', isa => Pinpoint_Message);
  has EmailMessage => (is => 'ro', isa => Pinpoint_CampaignEmailMessage);
  has GCMMessage => (is => 'ro', isa => Pinpoint_Message);
  has SMSMessage => (is => 'ro', isa => Pinpoint_CampaignSmsMessage);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GCMMessage' => {
                                 'class' => 'Paws::Pinpoint::Message',
                                 'type' => 'Pinpoint_Message'
                               },
               'BaiduMessage' => {
                                   'class' => 'Paws::Pinpoint::Message',
                                   'type' => 'Pinpoint_Message'
                                 },
               'EmailMessage' => {
                                   'class' => 'Paws::Pinpoint::CampaignEmailMessage',
                                   'type' => 'Pinpoint_CampaignEmailMessage'
                                 },
               'SMSMessage' => {
                                 'class' => 'Paws::Pinpoint::CampaignSmsMessage',
                                 'type' => 'Pinpoint_CampaignSmsMessage'
                               },
               'APNSMessage' => {
                                  'class' => 'Paws::Pinpoint::Message',
                                  'type' => 'Pinpoint_Message'
                                },
               'ADMMessage' => {
                                 'class' => 'Paws::Pinpoint::Message',
                                 'type' => 'Pinpoint_Message'
                               },
               'DefaultMessage' => {
                                     'class' => 'Paws::Pinpoint::Message',
                                     'type' => 'Pinpoint_Message'
                                   }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::MessageConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::MessageConfiguration object:

  $service_obj->Method(Att1 => { ADMMessage => $value, ..., SMSMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::MessageConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ADMMessage

=head1 DESCRIPTION

Specifies the message configuration settings for a campaign.

=head1 ATTRIBUTES


=head2 ADMMessage => Pinpoint_Message

  The message that the campaign sends through the ADM (Amazon Device
Messaging) channel. This message overrides the default message.


=head2 APNSMessage => Pinpoint_Message

  The message that the campaign sends through the APNs (Apple Push
Notification service) channel. This message overrides the default
message.


=head2 BaiduMessage => Pinpoint_Message

  The message that the campaign sends through the Baidu (Baidu Cloud
Push) channel. This message overrides the default message.


=head2 DefaultMessage => Pinpoint_Message

  The default message that the campaign sends through all the channels
that are configured for the campaign.


=head2 EmailMessage => Pinpoint_CampaignEmailMessage

  The message that the campaign sends through the email channel.


=head2 GCMMessage => Pinpoint_Message

  The message that the campaign sends through the GCM channel, which
enables Amazon Pinpoint to send push notifications through the Firebase
Cloud Messaging (FCM), formerly Google Cloud Messaging (GCM), service.
This message overrides the default message.


=head2 SMSMessage => Pinpoint_CampaignSmsMessage

  The message that the campaign sends through the SMS channel.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

