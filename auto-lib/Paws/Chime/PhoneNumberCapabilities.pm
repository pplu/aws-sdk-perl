package Paws::Chime::PhoneNumberCapabilities;
  use Moose;
  has InboundCall => (is => 'ro', isa => 'Bool');
  has InboundMMS => (is => 'ro', isa => 'Bool');
  has InboundSMS => (is => 'ro', isa => 'Bool');
  has OutboundCall => (is => 'ro', isa => 'Bool');
  has OutboundMMS => (is => 'ro', isa => 'Bool');
  has OutboundSMS => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::PhoneNumberCapabilities

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::PhoneNumberCapabilities object:

  $service_obj->Method(Att1 => { InboundCall => $value, ..., OutboundSMS => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::PhoneNumberCapabilities object:

  $result = $service_obj->Method(...);
  $result->Att1->InboundCall

=head1 DESCRIPTION

The phone number capabilities for Amazon Chime Business Calling phone
numbers, such as enabled inbound and outbound calling and text
messaging.

=head1 ATTRIBUTES


=head2 InboundCall => Bool

  Allows or denies inbound calling for the specified phone number.


=head2 InboundMMS => Bool

  Allows or denies inbound MMS messaging for the specified phone number.


=head2 InboundSMS => Bool

  Allows or denies inbound SMS messaging for the specified phone number.


=head2 OutboundCall => Bool

  Allows or denies outbound calling for the specified phone number.


=head2 OutboundMMS => Bool

  Allows or denies outbound MMS messaging for the specified phone number.


=head2 OutboundSMS => Bool

  Allows or denies outbound SMS messaging for the specified phone number.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

