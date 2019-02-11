package Paws::Pinpoint::SendUsersMessageRequest;
  use Moose;
  has Context => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__string');
  has MessageConfiguration => (is => 'ro', isa => 'Paws::Pinpoint::DirectMessageConfiguration');
  has TraceId => (is => 'ro', isa => 'Str');
  has Users => (is => 'ro', isa => 'Paws::Pinpoint::MapOfEndpointSendConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SendUsersMessageRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SendUsersMessageRequest object:

  $service_obj->Method(Att1 => { Context => $value, ..., Users => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SendUsersMessageRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Context

=head1 DESCRIPTION

Send message request.

=head1 ATTRIBUTES


=head2 Context => L<Paws::Pinpoint::MapOf__string>

  A map of custom attribute-value pairs. Amazon Pinpoint adds these
attributes to the data.pinpoint object in the body of the push
notification payload. Amazon Pinpoint also provides these attributes in
the events that it generates for users-messages deliveries.


=head2 MessageConfiguration => L<Paws::Pinpoint::DirectMessageConfiguration>

  Message definitions for the default message and any messages that are
tailored for specific channels.


=head2 TraceId => Str

  A unique ID that you can use to trace a message. This ID is visible to
recipients.


=head2 Users => L<Paws::Pinpoint::MapOfEndpointSendConfiguration>

  A map that associates user IDs with EndpointSendConfiguration objects.
Within an EndpointSendConfiguration object, you can tailor the message
for a user by specifying message overrides or substitutions.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

