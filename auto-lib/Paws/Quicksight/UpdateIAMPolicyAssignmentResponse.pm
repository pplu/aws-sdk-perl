
package Paws::Quicksight::UpdateIAMPolicyAssignmentResponse;
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

Paws::Quicksight::UpdateIAMPolicyAssignmentResponse

=head1 ATTRIBUTES


=head2 AssignmentId => Str

The ID of the assignment.


=head2 AssignmentName => Str

The name of the assignment.


=head2 AssignmentStatus => Str

The status of the assignment. Possible values are as follows:

=over

=item *

C<ENABLED> - Anything specified in this assignment is used when
creating the data source.

=item *

C<DISABLED> - This assignment isn't used when creating the data source.

=item *

C<DRAFT> - This assignment is an unfinished draft and isn't used when
creating the data source.

=back


Valid values are: C<"ENABLED">, C<"DRAFT">, C<"DISABLED">
=head2 Identities => L<Paws::Quicksight::IdentityMap>

The QuickSight users, groups, or both that the IAM policy is assigned
to.


=head2 PolicyArn => Str

The ARN for the IAM policy applied to the QuickSight users and groups
specified in this assignment.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

