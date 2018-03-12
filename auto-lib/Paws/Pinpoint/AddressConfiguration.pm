package Paws::Pinpoint::AddressConfiguration;
  use Moose;
  has BodyOverride => (is => 'ro', isa => 'Str');
  has ChannelType => (is => 'ro', isa => 'Str');
  has Context => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__string');
  has RawContent => (is => 'ro', isa => 'Str');
  has Substitutions => (is => 'ro', isa => 'Paws::Pinpoint::MapOfListOf__string');
  has TitleOverride => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::AddressConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::AddressConfiguration object:

  $service_obj->Method(Att1 => { BodyOverride => $value, ..., TitleOverride => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::AddressConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->BodyOverride

=head1 DESCRIPTION

Address configuration.

=head1 ATTRIBUTES


=head2 BodyOverride => Str

  Body override. If specified will override default body.


=head2 ChannelType => Str

  The channel type. Valid values: GCM | APNS | APNS_SANDBOX | APNS_VOIP |
APNS_VOIP_SANDBOX | ADM | SMS | EMAIL | BAIDU


=head2 Context => L<Paws::Pinpoint::MapOf__string>

  A map of custom attributes to attributes to be attached to the message
for this address. This payload is added to the push notification's
'data.pinpoint' object or added to the email/sms delivery receipt event
attributes.


=head2 RawContent => Str

  The Raw JSON formatted string to be used as the payload. This value
overrides the message.


=head2 Substitutions => L<Paws::Pinpoint::MapOfListOf__string>

  A map of substitution values for the message to be merged with the
DefaultMessage's substitutions. Substitutions on this map take
precedence over the all other substitutions.


=head2 TitleOverride => Str

  Title override. If specified will override default title if applicable.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

