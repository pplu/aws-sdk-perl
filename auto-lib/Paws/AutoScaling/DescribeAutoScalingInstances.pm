
package Paws::AutoScaling::DescribeAutoScalingInstances;
  use Moose;
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::AutoScalingInstancesType');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingInstancesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeAutoScalingInstances - Arguments for method DescribeAutoScalingInstances on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAutoScalingInstances on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method DescribeAutoScalingInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAutoScalingInstances.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To describe one or more Auto Scaling instances
    # This example describes the specified Auto Scaling instance.
    my $AutoScalingInstancesType = $autoscaling->DescribeAutoScalingInstances(
      {
        'InstanceIds' => ['i-4ba0837f']
      }
    );

    # Results:
    my $AutoScalingInstances = $AutoScalingInstancesType->AutoScalingInstances;

    # Returns a L<Paws::AutoScaling::AutoScalingInstancesType> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/DescribeAutoScalingInstances>

=head1 ATTRIBUTES


=head2 InstanceIds => ArrayRef[Str|Undef]

The IDs of the instances. You can specify up to C<MaxRecords> IDs. If
you omit this parameter, all Auto Scaling instances are described. If
you specify an ID that does not exist, it is ignored with no error.



=head2 MaxRecords => Int

The maximum number of items to return with this call. The default value
is 50 and the maximum value is 50.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAutoScalingInstances in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

