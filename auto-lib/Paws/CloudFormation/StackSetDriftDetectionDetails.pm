package Paws::CloudFormation::StackSetDriftDetectionDetails;
  use Moose;
  has DriftDetectionStatus => (is => 'ro', isa => 'Str');
  has DriftedStackInstancesCount => (is => 'ro', isa => 'Int');
  has DriftStatus => (is => 'ro', isa => 'Str');
  has FailedStackInstancesCount => (is => 'ro', isa => 'Int');
  has InProgressStackInstancesCount => (is => 'ro', isa => 'Int');
  has InSyncStackInstancesCount => (is => 'ro', isa => 'Int');
  has LastDriftCheckTimestamp => (is => 'ro', isa => 'Str');
  has TotalStackInstancesCount => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::StackSetDriftDetectionDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::StackSetDriftDetectionDetails object:

  $service_obj->Method(Att1 => { DriftDetectionStatus => $value, ..., TotalStackInstancesCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::StackSetDriftDetectionDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->DriftDetectionStatus

=head1 DESCRIPTION

Detailed information about the drift status of the stack set.

For stack sets, contains information about the last I<completed> drift
operation performed on the stack set. Information about drift
operations in-progress is not included.

For stack set operations, includes information about drift operations
currently being performed on the stack set.

For more information, see Detecting Unmanaged Changes in Stack Sets
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html)
in the I<AWS CloudFormation User Guide>.

=head1 ATTRIBUTES


=head2 DriftDetectionStatus => Str

  The status of the stack set drift detection operation.

=over

=item *

C<COMPLETED>: The drift detection operation completed without failing
on any stack instances.

=item *

C<FAILED>: The drift detection operation exceeded the specified failure
tolerance.

=item *

C<PARTIAL_SUCCESS>: The drift detection operation completed without
exceeding the failure tolerance for the operation.

=item *

C<IN_PROGRESS>: The drift detection operation is currently being
performed.

=item *

C<STOPPED>: The user has cancelled the drift detection operation.

=back



=head2 DriftedStackInstancesCount => Int

  The number of stack instances that have drifted from the expected
template and parameter configuration of the stack set. A stack instance
is considered to have drifted if one or more of the resources in the
associated stack do not match their expected configuration.


=head2 DriftStatus => Str

  Status of the stack set's actual configuration compared to its expected
template and parameter configuration. A stack set is considered to have
drifted if one or more of its stack instances have drifted from their
expected template and parameter configuration.

=over

=item *

C<DRIFTED>: One or more of the stack instances belonging to the stack
set stack differs from the expected template and parameter
configuration. A stack instance is considered to have drifted if one or
more of the resources in the associated stack have drifted.

=item *

C<NOT_CHECKED>: AWS CloudFormation has not checked the stack set for
drift.

=item *

C<IN_SYNC>: All of the stack instances belonging to the stack set stack
match from the expected template and parameter configuration.

=back



=head2 FailedStackInstancesCount => Int

  The number of stack instances for which the drift detection operation
failed.


=head2 InProgressStackInstancesCount => Int

  The number of stack instances that are currently being checked for
drift.


=head2 InSyncStackInstancesCount => Int

  The number of stack instances which match the expected template and
parameter configuration of the stack set.


=head2 LastDriftCheckTimestamp => Str

  Most recent time when CloudFormation performed a drift detection
operation on the stack set. This value will be C<NULL> for any stack
set on which drift detection has not yet been performed.


=head2 TotalStackInstancesCount => Int

  The total number of stack instances belonging to this stack set.

The total number of stack instances is equal to the total of:

=over

=item *

Stack instances that match the stack set configuration.

=item *

Stack instances that have drifted from the stack set configuration.

=item *

Stack instances where the drift detection operation has failed.

=item *

Stack instances currently being checked for drift.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

