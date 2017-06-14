package Paws::Pinpoint::MessageResult;
  use Moose;
  has DeliveryStatus => (is => 'ro', isa => 'Str');
  has StatusCode => (is => 'ro', isa => 'Int');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has UpdatedToken => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::MessageResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::MessageResult object:

  $service_obj->Method(Att1 => { DeliveryStatus => $value, ..., UpdatedToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::MessageResult object:

  $result = $service_obj->Method(...);
  $result->Att1->DeliveryStatus

=head1 DESCRIPTION

The result from sending a message to an address.

=head1 ATTRIBUTES


=head2 DeliveryStatus => Str

  Delivery status of message.


=head2 StatusCode => Int

  Downstream service status code.


=head2 StatusMessage => Str

  Status message for message delivery.


=head2 UpdatedToken => Str

  If token was updated as part of delivery. (This is GCM Specific)



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

