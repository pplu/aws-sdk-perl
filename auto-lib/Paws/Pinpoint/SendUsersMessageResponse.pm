package Paws::Pinpoint::SendUsersMessageResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', required => 1);
  has RequestId => (is => 'ro', isa => 'Str');
  has Result => (is => 'ro', isa => 'Paws::Pinpoint::MapOfMapOfEndpointMessageResult');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SendUsersMessageResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SendUsersMessageResponse object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., Result => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SendUsersMessageResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

Provides information about which users and endpoints a message was sent
to.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

  The unique identifier for the application that was used to send the
message.


=head2 RequestId => Str

  The unique identifier that was assigned to the message request.


=head2 Result => L<Paws::Pinpoint::MapOfMapOfEndpointMessageResult>

  An object that indicates which endpoints the message was sent to, for
each user. The object lists user IDs and, for each user ID, provides
the endpoint IDs that the message was sent to. For each endpoint ID, it
provides an EndpointMessageResult object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

