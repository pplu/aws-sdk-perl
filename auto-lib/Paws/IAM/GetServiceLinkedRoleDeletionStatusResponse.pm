
package Paws::IAM::GetServiceLinkedRoleDeletionStatusResponse;
  use Moose;
  has Reason => (is => 'ro', isa => 'Paws::IAM::DeletionTaskFailureReasonType');
  has Status => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetServiceLinkedRoleDeletionStatusResponse

=head1 ATTRIBUTES


=head2 Reason => L<Paws::IAM::DeletionTaskFailureReasonType>

An object that contains details about the reason the deletion failed.


=head2 B<REQUIRED> Status => Str

The status of the deletion.

Valid values are: C<"SUCCEEDED">, C<"IN_PROGRESS">, C<"FAILED">, C<"NOT_STARTED">
=head2 _request_id => Str


=cut

