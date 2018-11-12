
package Paws::ELB::ModifyLoadBalancerAttributes;
  use Moose;
  has LoadBalancerAttributes => (is => 'ro', isa => 'Paws::ELB::LoadBalancerAttributes', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyLoadBalancerAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::ModifyLoadBalancerAttributesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyLoadBalancerAttributesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::ModifyLoadBalancerAttributes - Arguments for method ModifyLoadBalancerAttributes on L<Paws::ELB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyLoadBalancerAttributes on the
L<Elastic Load Balancing|Paws::ELB> service. Use the attributes of this class
as arguments to method ModifyLoadBalancerAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyLoadBalancerAttributes.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELB');
    # To enable cross-zone load balancing
    # This example enables cross-zone load balancing for the specified load
    # balancer.
    my $ModifyLoadBalancerAttributesOutput =
      $elasticloadbalancing->ModifyLoadBalancerAttributes(
      {
        'LoadBalancerAttributes' => {
          'CrossZoneLoadBalancing' => {
            'Enabled' => 1
          }
        },
        'LoadBalancerName' => 'my-load-balancer'
      }
      );

    # Results:
    my $LoadBalancerAttributes =
      $ModifyLoadBalancerAttributesOutput->LoadBalancerAttributes;
    my $LoadBalancerName =
      $ModifyLoadBalancerAttributesOutput->LoadBalancerName;

    # Returns a L<Paws::ELB::ModifyLoadBalancerAttributesOutput> object.
    # To enable connection draining
    # This example enables connection draining for the specified load balancer.
    my $ModifyLoadBalancerAttributesOutput =
      $elasticloadbalancing->ModifyLoadBalancerAttributes(
      {
        'LoadBalancerAttributes' => {
          'ConnectionDraining' => {
            'Enabled' => 1,
            'Timeout' => 300
          }
        },
        'LoadBalancerName' => 'my-load-balancer'
      }
      );

    # Results:
    my $LoadBalancerAttributes =
      $ModifyLoadBalancerAttributesOutput->LoadBalancerAttributes;
    my $LoadBalancerName =
      $ModifyLoadBalancerAttributesOutput->LoadBalancerName;

    # Returns a L<Paws::ELB::ModifyLoadBalancerAttributesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/ModifyLoadBalancerAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoadBalancerAttributes => L<Paws::ELB::LoadBalancerAttributes>

The attributes for the load balancer.



=head2 B<REQUIRED> LoadBalancerName => Str

The name of the load balancer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyLoadBalancerAttributes in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

