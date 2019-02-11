
package Paws::CloudFormation::DescribeStackDriftDetectionStatusOutput;
  use Moose;
  has DetectionStatus => (is => 'ro', isa => 'Str', required => 1);
  has DetectionStatusReason => (is => 'ro', isa => 'Str');
  has DriftedStackResourceCount => (is => 'ro', isa => 'Int');
  has StackDriftDetectionId => (is => 'ro', isa => 'Str', required => 1);
  has StackDriftStatus => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str', required => 1);
  has Timestamp => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeStackDriftDetectionStatusOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectionStatus => Str

The status of the stack drift detection operation.

=over

=item *

C<DETECTION_COMPLETE>: The stack drift detection operation has
successfully completed for all resources in the stack that support
drift detection. (Resources that do not currently support stack
detection remain unchecked.)

If you specified logical resource IDs for AWS CloudFormation to use as
a filter for the stack drift detection operation, only the resources
with those logical IDs are checked for drift.

=item *

C<DETECTION_FAILED>: The stack drift detection operation has failed for
at least one resource in the stack. Results will be available for
resources on which AWS CloudFormation successfully completed drift
detection.

=item *

C<DETECTION_IN_PROGRESS>: The stack drift detection operation is
currently in progress.

=back


Valid values are: C<"DETECTION_IN_PROGRESS">, C<"DETECTION_FAILED">, C<"DETECTION_COMPLETE">
=head2 DetectionStatusReason => Str

The reason the stack drift detection operation has its current status.


=head2 DriftedStackResourceCount => Int

Total number of stack resources that have drifted. This is NULL until
the drift detection operation reaches a status of
C<DETECTION_COMPLETE>. This value will be 0 for stacks whose drift
status is C<IN_SYNC>.


=head2 B<REQUIRED> StackDriftDetectionId => Str

The ID of the drift detection results of this operation.

AWS CloudFormation generates new results, with a new drift detection
ID, each time this operation is run. However, the number of reports AWS
CloudFormation retains for any given stack, and for how long, may vary.


=head2 StackDriftStatus => Str

Status of the stack's actual configuration compared to its expected
configuration.

=over

=item *

C<DRIFTED>: The stack differs from its expected template configuration.
A stack is considered to have drifted if one or more of its resources
have drifted.

=item *

C<NOT_CHECKED>: AWS CloudFormation has not checked if the stack differs
from its expected template configuration.

=item *

C<IN_SYNC>: The stack's actual configuration matches its expected
template configuration.

=item *

C<UNKNOWN>: This value is reserved for future use.

=back


Valid values are: C<"DRIFTED">, C<"IN_SYNC">, C<"UNKNOWN">, C<"NOT_CHECKED">
=head2 B<REQUIRED> StackId => Str

The ID of the stack.


=head2 B<REQUIRED> Timestamp => Str

Time at which the stack drift detection operation was initiated.


=head2 _request_id => Str


=cut

