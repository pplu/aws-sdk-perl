
package Paws::ELBv2::DescribeProvisionedCapacity;
  use Moose;
  has LoadBalancerArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeProvisionedCapacity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::DescribeProvisionedCapacityOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeProvisionedCapacityResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeProvisionedCapacity - Arguments for method DescribeProvisionedCapacity on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeProvisionedCapacity on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method DescribeProvisionedCapacity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeProvisionedCapacity.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    my $DescribeProvisionedCapacityOutput =
      $elasticloadbalancing->DescribeProvisionedCapacity(
      LoadBalancerArn => 'MyLoadBalancerArn',

      );

    # Results:
    my $ProvisionedCapacity =
      $DescribeProvisionedCapacityOutput->ProvisionedCapacity;

    # Returns a L<Paws::ELBv2::DescribeProvisionedCapacityOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/DescribeProvisionedCapacity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoadBalancerArn => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeProvisionedCapacity in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

