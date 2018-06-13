
package Paws::ELB::DescribeInstanceHealth;
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::ELB::Instance]');
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstanceHealth');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::DescribeEndPointStateOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeInstanceHealthResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DescribeInstanceHealth - Arguments for method DescribeInstanceHealth on L<Paws::ELB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInstanceHealth on the
L<Elastic Load Balancing|Paws::ELB> service. Use the attributes of this class
as arguments to method DescribeInstanceHealth.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInstanceHealth.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELB');
    # To describe the health of the instances for a load balancer
    # This example describes the health of the instances for the specified load
    # balancer.
    my $DescribeEndPointStateOutput =
      $elasticloadbalancing->DescribeInstanceHealth(
      {
        'LoadBalancerName' => 'my-load-balancer'
      }
      );

    # Results:
    my $InstanceStates = $DescribeEndPointStateOutput->InstanceStates;

    # Returns a L<Paws::ELB::DescribeEndPointStateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/DescribeInstanceHealth>

=head1 ATTRIBUTES


=head2 Instances => ArrayRef[L<Paws::ELB::Instance>]

The IDs of the instances.



=head2 B<REQUIRED> LoadBalancerName => Str

The name of the load balancer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInstanceHealth in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

