
package Paws::AutoScaling::DescribePolicies;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PolicyTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePolicies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::PoliciesType');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribePoliciesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribePolicies - Arguments for method DescribePolicies on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePolicies on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method DescribePolicies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePolicies.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To describe Auto Scaling policies
    # This example describes the policies for the specified Auto Scaling group.
    my $PoliciesType = $autoscaling->DescribePolicies(
      {
        'AutoScalingGroupName' => 'my-auto-scaling-group'
      }
    );

    # Results:
    my $ScalingPolicies = $PoliciesType->ScalingPolicies;

    # Returns a L<Paws::AutoScaling::PoliciesType> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/DescribePolicies>

=head1 ATTRIBUTES


=head2 AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 MaxRecords => Int

The maximum number of items to be returned with each call. The default
value is 50 and the maximum value is 100.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)



=head2 PolicyNames => ArrayRef[Str|Undef]

The names of one or more policies. If you omit this parameter, all
policies are described. If a group name is provided, the results are
limited to that group. This list is limited to 50 items. If you specify
an unknown policy name, it is ignored with no error.



=head2 PolicyTypes => ArrayRef[Str|Undef]

One or more policy types. Valid values are C<SimpleScaling> and
C<StepScaling>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePolicies in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

