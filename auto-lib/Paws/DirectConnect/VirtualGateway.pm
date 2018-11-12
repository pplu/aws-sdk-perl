package Paws::DirectConnect::VirtualGateway;
  use Moose;
  has VirtualGatewayId => (is => 'ro', isa => 'Str', request_name => 'virtualGatewayId', traits => ['NameInRequest']);
  has VirtualGatewayState => (is => 'ro', isa => 'Str', request_name => 'virtualGatewayState', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::VirtualGateway

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DirectConnect::VirtualGateway object:

  $service_obj->Method(Att1 => { VirtualGatewayId => $value, ..., VirtualGatewayState => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DirectConnect::VirtualGateway object:

  $result = $service_obj->Method(...);
  $result->Att1->VirtualGatewayId

=head1 DESCRIPTION

Information about a virtual private gateway for a private virtual
interface.

=head1 ATTRIBUTES


=head2 VirtualGatewayId => Str

  The ID of the virtual private gateway.


=head2 VirtualGatewayState => Str

  The state of the virtual private gateway. The following are the
possible values:

=over

=item *

C<pending>: Initial state after creating the virtual private gateway.

=item *

C<available>: Ready for use by a private virtual interface.

=item *

C<deleting>: Initial state after deleting the virtual private gateway.

=item *

C<deleted>: The virtual private gateway is deleted. The private virtual
interface is unable to send traffic over this gateway.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

