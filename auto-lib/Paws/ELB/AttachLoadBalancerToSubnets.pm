# Generated from callargs_class.tt

package Paws::ELB::AttachLoadBalancerToSubnets;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::ELB::Types qw//;
  has LoadBalancerName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Subnets => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AttachLoadBalancerToSubnets');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ELB::AttachLoadBalancerToSubnetsOutput');
  class_has _result_key => (isa => Str, is => 'ro', default => 'AttachLoadBalancerToSubnetsResult');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Subnets' => 1,
                    'LoadBalancerName' => 1
                  },
  'types' => {
               'LoadBalancerName' => {
                                       'type' => 'Str'
                                     },
               'Subnets' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::AttachLoadBalancerToSubnets - Arguments for method AttachLoadBalancerToSubnets on L<Paws::ELB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AttachLoadBalancerToSubnets on the
L<Elastic Load Balancing|Paws::ELB> service. Use the attributes of this class
as arguments to method AttachLoadBalancerToSubnets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AttachLoadBalancerToSubnets.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELB');
   # To attach subnets to a load balancer
   # This example adds the specified subnet to the set of configured subnets for
   # the specified load balancer.
    my $AttachLoadBalancerToSubnetsOutput =
      $elasticloadbalancing->AttachLoadBalancerToSubnets(
      'LoadBalancerName' => 'my-load-balancer',
      'Subnets'          => ['subnet-0ecac448']
      );

    # Results:
    my $Subnets = $AttachLoadBalancerToSubnetsOutput->Subnets;

    # Returns a L<Paws::ELB::AttachLoadBalancerToSubnetsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/AttachLoadBalancerToSubnets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoadBalancerName => Str

The name of the load balancer.



=head2 B<REQUIRED> Subnets => ArrayRef[Str|Undef]

The IDs of the subnets to add. You can add only one subnet per
Availability Zone.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AttachLoadBalancerToSubnets in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

