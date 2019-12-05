
package Paws::Quicksight::CreateIAMPolicyAssignmentResponse;
  use Moose;
  has AssignmentId => (is => 'ro', isa => 'Str');
  has AssignmentName => (is => 'ro', isa => 'Str');
  has AssignmentStatus => (is => 'ro', isa => 'Str');
  has Identities => (is => 'ro', isa => 'Paws::Quicksight::IdentityMap');
  has PolicyArn => (is => 'ro', isa => 'Str');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::CreateIAMPolicyAssignmentResponse

=head1 ATTRIBUTES


=head2 AssignmentId => Str

An ID for the assignment.


=head2 AssignmentName => Str

The name of the assignment. Must be unique within an AWS account.


=head2 AssignmentStatus => Str

The status of an assignment:

=over

=item *

ENABLED - Anything specified in this assignment is used while creating
the data source.

=item *

DISABLED - This assignment isn't used while creating the data source.

=item *

DRAFT - Assignment is an unfinished draft and isn't used while creating
the data source.

=back


Valid values are: C<"ENABLED">, C<"DRAFT">, C<"DISABLED">
=head2 Identities => L<Paws::Quicksight::IdentityMap>

QuickSight users and/or groups that are assigned to the IAM policy.


=head2 PolicyArn => Str

An IAM policy Amazon Resource Name (ARN) that is applied to the
QuickSight users and groups specified in this assignment.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

