
package Paws::GlobalAccelerator::AllowCustomRoutingTraffic;
  use Moose;
  has AllowAllTrafficToEndpoint => (is => 'ro', isa => 'Bool');
  has DestinationAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DestinationPorts => (is => 'ro', isa => 'ArrayRef[Int]');
  has EndpointGroupArn => (is => 'ro', isa => 'Str', required => 1);
  has EndpointId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AllowCustomRoutingTraffic');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::AllowCustomRoutingTraffic - Arguments for method AllowCustomRoutingTraffic on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AllowCustomRoutingTraffic on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method AllowCustomRoutingTraffic.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AllowCustomRoutingTraffic.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    $globalaccelerator->AllowCustomRoutingTraffic(
      EndpointGroupArn          => 'MyGenericString',
      EndpointId                => 'MyGenericString',
      AllowAllTrafficToEndpoint => 1,                   # OPTIONAL
      DestinationAddresses      => [
        'MyIpAddress', ...                              # max: 45
      ],                                                # OPTIONAL
      DestinationPorts => [
        1, ...                                          # min: 1, max: 65535
      ],                                                # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/AllowCustomRoutingTraffic>

=head1 ATTRIBUTES


=head2 AllowAllTrafficToEndpoint => Bool

Indicates whether all destination IP addresses and ports for a
specified VPC subnet endpoint can receive traffic from a custom routing
accelerator. The value is TRUE or FALSE.

When set to TRUE, I<all> destinations in the custom routing VPC subnet
can receive traffic. Note that you cannot specify destination IP
addresses and ports when the value is set to TRUE.

When set to FALSE (or not specified), you I<must> specify a list of
destination IP addresses that are allowed to receive traffic. A list of
ports is optional. If you don't specify a list of ports, the ports that
can accept traffic is the same as the ports configured for the endpoint
group.

The default value is FALSE.



=head2 DestinationAddresses => ArrayRef[Str|Undef]

A list of specific Amazon EC2 instance IP addresses (destination
addresses) in a subnet that you want to allow to receive traffic. The
IP addresses must be a subset of the IP addresses that you specified
for the endpoint group.

C<DestinationAddresses> is required if C<AllowAllTrafficToEndpoint> is
C<FALSE> or is not specified.



=head2 DestinationPorts => ArrayRef[Int]

A list of specific Amazon EC2 instance ports (destination ports) that
you want to allow to receive traffic.



=head2 B<REQUIRED> EndpointGroupArn => Str

The Amazon Resource Name (ARN) of the endpoint group.



=head2 B<REQUIRED> EndpointId => Str

An ID for the endpoint. For custom routing accelerators, this is the
virtual private cloud (VPC) subnet ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AllowCustomRoutingTraffic in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

