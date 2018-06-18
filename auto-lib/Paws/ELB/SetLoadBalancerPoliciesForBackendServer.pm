
package Paws::ELB::SetLoadBalancerPoliciesForBackendServer;
  use Moose;
  has InstancePort => (is => 'ro', isa => 'Int', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerPoliciesForBackendServer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::SetLoadBalancerPoliciesForBackendServerOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerPoliciesForBackendServerResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::SetLoadBalancerPoliciesForBackendServer - Arguments for method SetLoadBalancerPoliciesForBackendServer on L<Paws::ELB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetLoadBalancerPoliciesForBackendServer on the
L<Elastic Load Balancing|Paws::ELB> service. Use the attributes of this class
as arguments to method SetLoadBalancerPoliciesForBackendServer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetLoadBalancerPoliciesForBackendServer.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELB');
    # To replace the policies associated with a port for a backend instance
    # This example replaces the policies that are currently associated with the
    # specified port.
    my $SetLoadBalancerPoliciesForBackendServerOutput =
      $elasticloadbalancing->SetLoadBalancerPoliciesForBackendServer(
      {
        'InstancePort'     => 80,
        'LoadBalancerName' => 'my-load-balancer',
        'PolicyNames'      => ['my-ProxyProtocol-policy']
      }
      );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/SetLoadBalancerPoliciesForBackendServer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstancePort => Int

The port number associated with the EC2 instance.



=head2 B<REQUIRED> LoadBalancerName => Str

The name of the load balancer.



=head2 B<REQUIRED> PolicyNames => ArrayRef[Str|Undef]

The names of the policies. If the list is empty, then all current
polices are removed from the EC2 instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetLoadBalancerPoliciesForBackendServer in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

