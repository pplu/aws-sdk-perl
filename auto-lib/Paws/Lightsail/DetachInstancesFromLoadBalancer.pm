
package Paws::Lightsail::DetachInstancesFromLoadBalancer;
  use Moose;
  has InstanceNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'instanceNames' , required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'loadBalancerName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachInstancesFromLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::DetachInstancesFromLoadBalancerResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::DetachInstancesFromLoadBalancer - Arguments for method DetachInstancesFromLoadBalancer on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetachInstancesFromLoadBalancer on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method DetachInstancesFromLoadBalancer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetachInstancesFromLoadBalancer.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $DetachInstancesFromLoadBalancerResult =
      $lightsail->DetachInstancesFromLoadBalancer(
      InstanceNames    => [ 'MyResourceName', ... ],
      LoadBalancerName => 'MyResourceName',

      );

    # Results:
    my $Operations = $DetachInstancesFromLoadBalancerResult->Operations;

   # Returns a L<Paws::Lightsail::DetachInstancesFromLoadBalancerResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/DetachInstancesFromLoadBalancer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceNames => ArrayRef[Str|Undef]

An array of strings containing the names of the instances you want to
detach from the load balancer.



=head2 B<REQUIRED> LoadBalancerName => Str

The name of the Lightsail load balancer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetachInstancesFromLoadBalancer in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

