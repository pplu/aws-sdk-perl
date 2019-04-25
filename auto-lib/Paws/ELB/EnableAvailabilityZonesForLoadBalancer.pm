
package Paws::ELB::EnableAvailabilityZonesForLoadBalancer;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableAvailabilityZonesForLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::AddAvailabilityZonesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'EnableAvailabilityZonesForLoadBalancerResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::EnableAvailabilityZonesForLoadBalancer - Arguments for method EnableAvailabilityZonesForLoadBalancer on L<Paws::ELB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableAvailabilityZonesForLoadBalancer on the
L<Elastic Load Balancing|Paws::ELB> service. Use the attributes of this class
as arguments to method EnableAvailabilityZonesForLoadBalancer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableAvailabilityZonesForLoadBalancer.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELB');
    # To enable an Availability Zone for a load balancer
    # This example adds the specified Availability Zone to the specified load
    # balancer.
    my $AddAvailabilityZonesOutput =
      $elasticloadbalancing->EnableAvailabilityZonesForLoadBalancer(
      {
        'AvailabilityZones' => ['us-west-2b'],
        'LoadBalancerName'  => 'my-load-balancer'
      }
      );

    # Results:
    my $AvailabilityZones = $AddAvailabilityZonesOutput->AvailabilityZones;

    # Returns a L<Paws::ELB::AddAvailabilityZonesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/EnableAvailabilityZonesForLoadBalancer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AvailabilityZones => ArrayRef[Str|Undef]

The Availability Zones. These must be in the same region as the load
balancer.



=head2 B<REQUIRED> LoadBalancerName => Str

The name of the load balancer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableAvailabilityZonesForLoadBalancer in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

