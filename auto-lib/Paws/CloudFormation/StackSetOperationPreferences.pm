package Paws::CloudFormation::StackSetOperationPreferences;
  use Moose;
  has FailureToleranceCount => (is => 'ro', isa => 'Int');
  has FailureTolerancePercentage => (is => 'ro', isa => 'Int');
  has MaxConcurrentCount => (is => 'ro', isa => 'Int');
  has MaxConcurrentPercentage => (is => 'ro', isa => 'Int');
  has RegionOrder => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::StackSetOperationPreferences

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::StackSetOperationPreferences object:

  $service_obj->Method(Att1 => { FailureToleranceCount => $value, ..., RegionOrder => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::StackSetOperationPreferences object:

  $result = $service_obj->Method(...);
  $result->Att1->FailureToleranceCount

=head1 DESCRIPTION

The user-specified preferences for how AWS CloudFormation performs a
stack set operation.

For more information on maximum concurrent accounts and failure
tolerance, see Stack set operation options
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options).

=head1 ATTRIBUTES


=head2 FailureToleranceCount => Int

  The number of accounts, per region, for which this operation can fail
before AWS CloudFormation stops the operation in that region. If the
operation is stopped in a region, AWS CloudFormation doesn't attempt
the operation in any subsequent regions.

Conditional: You must specify either C<FailureToleranceCount> or
C<FailureTolerancePercentage> (but not both).


=head2 FailureTolerancePercentage => Int

  The percentage of accounts, per region, for which this stack operation
can fail before AWS CloudFormation stops the operation in that region.
If the operation is stopped in a region, AWS CloudFormation doesn't
attempt the operation in any subsequent regions.

When calculating the number of accounts based on the specified
percentage, AWS CloudFormation rounds I<down> to the next whole number.

Conditional: You must specify either C<FailureToleranceCount> or
C<FailureTolerancePercentage>, but not both.


=head2 MaxConcurrentCount => Int

  The maximum number of accounts in which to perform this operation at
one time. This is dependent on the value of
C<FailureToleranceCount>E<mdash>C<MaxConcurrentCount> is at most one
more than the C<FailureToleranceCount> .

Note that this setting lets you specify the I<maximum> for operations.
For large deployments, under certain circumstances the actual number of
accounts acted upon concurrently may be lower due to service
throttling.

Conditional: You must specify either C<MaxConcurrentCount> or
C<MaxConcurrentPercentage>, but not both.


=head2 MaxConcurrentPercentage => Int

  The maximum percentage of accounts in which to perform this operation
at one time.

When calculating the number of accounts based on the specified
percentage, AWS CloudFormation rounds down to the next whole number.
This is true except in cases where rounding down would result is zero.
In this case, CloudFormation sets the number as one instead.

Note that this setting lets you specify the I<maximum> for operations.
For large deployments, under certain circumstances the actual number of
accounts acted upon concurrently may be lower due to service
throttling.

Conditional: You must specify either C<MaxConcurrentCount> or
C<MaxConcurrentPercentage>, but not both.


=head2 RegionOrder => ArrayRef[Str|Undef]

  The order of the regions in where you want to perform the stack
operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

