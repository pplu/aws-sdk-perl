package Paws::Pinpoint::MessageRequest;
  use Moose;
  has Addresses => (is => 'ro', isa => 'Paws::Pinpoint::MapOfAddressConfiguration');
  has Context => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__string');
  has Endpoints => (is => 'ro', isa => 'Paws::Pinpoint::MapOfEndpointSendConfiguration');
  has MessageConfiguration => (is => 'ro', isa => 'Paws::Pinpoint::DirectMessageConfiguration');
  has TraceId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::MessageRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::MessageRequest object:

  $service_obj->Method(Att1 => { Addresses => $value, ..., TraceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::MessageRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Addresses

=head1 DESCRIPTION

Send message request.

=head1 ATTRIBUTES


=head2 Addresses => L<Paws::Pinpoint::MapOfAddressConfiguration>

  A map of key-value pairs, where each key is an address and each value
is an AddressConfiguration object. An address can be a push
notification token, a phone number, or an email address.


=head2 Context => L<Paws::Pinpoint::MapOf__string>

  A map of custom attributes to attributes to be attached to the message.
This payload is added to the push notification's 'data.pinpoint' object
or added to the email/sms delivery receipt event attributes.


=head2 Endpoints => L<Paws::Pinpoint::MapOfEndpointSendConfiguration>

  A map of key-value pairs, where each key is an endpoint ID and each
value is an EndpointSendConfiguration object. Within an
EndpointSendConfiguration object, you can tailor the message for an
endpoint by specifying message overrides or substitutions.


=head2 MessageConfiguration => L<Paws::Pinpoint::DirectMessageConfiguration>

  Message configuration.


=head2 TraceId => Str

  A unique ID that you can use to trace a message. This ID is visible to
recipients.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

