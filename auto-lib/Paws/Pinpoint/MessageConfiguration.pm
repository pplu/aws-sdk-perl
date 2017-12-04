package Paws::Pinpoint::MessageConfiguration;
  use Moose;
  has ADMMessage => (is => 'ro', isa => 'Paws::Pinpoint::Message');
  has APNSMessage => (is => 'ro', isa => 'Paws::Pinpoint::Message');
  has BaiduMessage => (is => 'ro', isa => 'Paws::Pinpoint::Message');
  has DefaultMessage => (is => 'ro', isa => 'Paws::Pinpoint::Message');
  has EmailMessage => (is => 'ro', isa => 'Paws::Pinpoint::CampaignEmailMessage');
  has GCMMessage => (is => 'ro', isa => 'Paws::Pinpoint::Message');
  has SMSMessage => (is => 'ro', isa => 'Paws::Pinpoint::CampaignSmsMessage');
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

Message configuration for a campaign.

=head1 ATTRIBUTES


=head2 ADMMessage => L<Paws::Pinpoint::Message>

  The message that the campaign delivers to ADM channels. Overrides the
default message.


=head2 APNSMessage => L<Paws::Pinpoint::Message>

  The message that the campaign delivers to APNS channels. Overrides the
default message.


=head2 BaiduMessage => L<Paws::Pinpoint::Message>

  The message that the campaign delivers to Baidu channels. Overrides the
default message.


=head2 DefaultMessage => L<Paws::Pinpoint::Message>

  The default message for all channels.


=head2 EmailMessage => L<Paws::Pinpoint::CampaignEmailMessage>

  The email message configuration.


=head2 GCMMessage => L<Paws::Pinpoint::Message>

  The message that the campaign delivers to GCM channels. Overrides the
default message.


=head2 SMSMessage => L<Paws::Pinpoint::CampaignSmsMessage>

  The SMS message configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

