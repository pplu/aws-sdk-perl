
package Paws::DirectConnect::DescribeHostedConnections;
  use Moose;
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeHostedConnections');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::Connections');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeHostedConnections - Arguments for method DescribeHostedConnections on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeHostedConnections on the 
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method DescribeHostedConnections.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeHostedConnections.

As an example:

  $service_obj->DescribeHostedConnections(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionId => Str

The ID of the interconnect or LAG on which the hosted connections are
provisioned.

Example: dxcon-abc123 or dxlag-abc123

Default: None




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeHostedConnections in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

