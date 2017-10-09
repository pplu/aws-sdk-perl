
package Paws::IAM::DeleteServiceLinkedRoleResponse;
  use Moose;
  has DeletionTaskId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::DeleteServiceLinkedRoleResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeletionTaskId => Str

The deletion task identifier that you can use to check the status of
the deletion. This identifier is returned in the format
C<task/aws-service-role/E<lt>service-principal-nameE<gt>/E<lt>role-nameE<gt>/E<lt>task-uuidE<gt>>.


=head2 _request_id => Str


=cut

