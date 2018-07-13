package Paws::Pinpoint::EndpointMessageResult;
  use Moose;
  has Address => (is => 'ro', isa => 'Str');
  has DeliveryStatus => (is => 'ro', isa => 'Str');
  has MessageId => (is => 'ro', isa => 'Str');
  has StatusCode => (is => 'ro', isa => 'Int');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has UpdatedToken => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::EndpointMessageResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::EndpointMessageResult object:

  $service_obj->Method(Att1 => { Address => $value, ..., UpdatedToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::EndpointMessageResult object:

  $result = $service_obj->Method(...);
  $result->Att1->Address

=head1 DESCRIPTION

The result from sending a message to an endpoint.

=head1 ATTRIBUTES


=head2 Address => Str

  Address that endpoint message was delivered to.


=head2 DeliveryStatus => Str

  Delivery status of message.


=head2 MessageId => Str

  Unique message identifier associated with the message that was sent.


=head2 StatusCode => Int

  Downstream service status code.


=head2 StatusMessage => Str

  Status message for message delivery.


=head2 UpdatedToken => Str

  If token was updated as part of delivery. (This is GCM Specific)



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

