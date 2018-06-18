
package Paws::EC2::DeleteRoute;
  use Moose;
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationCidrBlock' );
  has DestinationIpv6CidrBlock => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationIpv6CidrBlock' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has RouteTableId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'routeTableId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRoute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteRoute - Arguments for method DeleteRoute on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRoute on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DeleteRoute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRoute.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To delete a route
    # This example deletes the specified route from the specified route table.
    $ec2->DeleteRoute(
      {
        'DestinationCidrBlock' => '0.0.0.0/0',
        'RouteTableId'         => 'rtb-22574640'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DeleteRoute>

=head1 ATTRIBUTES


=head2 DestinationCidrBlock => Str

The IPv4 CIDR range for the route. The value you specify must match the
CIDR for the route exactly.



=head2 DestinationIpv6CidrBlock => Str

The IPv6 CIDR range for the route. The value you specify must match the
CIDR for the route exactly.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> RouteTableId => Str

The ID of the route table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRoute in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

