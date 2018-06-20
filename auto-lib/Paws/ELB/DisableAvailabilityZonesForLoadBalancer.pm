
package Paws::ELB::DisableAvailabilityZonesForLoadBalancer;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableAvailabilityZonesForLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::RemoveAvailabilityZonesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DisableAvailabilityZonesForLoadBalancerResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DisableAvailabilityZonesForLoadBalancer - Arguments for method DisableAvailabilityZonesForLoadBalancer on L<Paws::ELB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisableAvailabilityZonesForLoadBalancer on the
L<Elastic Load Balancing|Paws::ELB> service. Use the attributes of this class
as arguments to method DisableAvailabilityZonesForLoadBalancer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisableAvailabilityZonesForLoadBalancer.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELB');
    # To disable an Availability Zone for a load balancer
    # This example removes the specified Availability Zone from the set of
    # Availability Zones for the specified load balancer.
    my $RemoveAvailabilityZonesOutput =
      $elasticloadbalancing->DisableAvailabilityZonesForLoadBalancer(
      {
        'AvailabilityZones' => ['us-west-2a'],
        'LoadBalancerName'  => 'my-load-balancer'
      }
      );

    # Results:
    my $AvailabilityZones = $RemoveAvailabilityZonesOutput->AvailabilityZones;

    # Returns a L<Paws::ELB::RemoveAvailabilityZonesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/DisableAvailabilityZonesForLoadBalancer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AvailabilityZones => ArrayRef[Str|Undef]

The Availability Zones.



=head2 B<REQUIRED> LoadBalancerName => Str

The name of the load balancer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisableAvailabilityZonesForLoadBalancer in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

