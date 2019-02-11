package Paws::Pinpoint::SendUsersMessageResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
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

User send message response.

=head1 ATTRIBUTES


=head2 ApplicationId => Str

  The unique ID of the Amazon Pinpoint project used to send the message.


=head2 RequestId => Str

  The unique ID assigned to the users-messages request.


=head2 Result => L<Paws::Pinpoint::MapOfMapOfEndpointMessageResult>

  An object that shows the endpoints that were messaged for each user.
The object provides a list of user IDs. For each user ID, it provides
the endpoint IDs that were messaged. For each endpoint ID, it provides
an EndpointMessageResult object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

