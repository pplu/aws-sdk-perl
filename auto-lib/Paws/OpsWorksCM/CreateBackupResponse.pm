
package Paws::OpsWorksCM::CreateBackupResponse;
  use Moose;
  has Backup => (is => 'ro', isa => 'Paws::OpsWorksCM::Backup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::CreateBackupResponse

=head1 ATTRIBUTES


=head2 Backup => L<Paws::OpsWorksCM::Backup>

Backup created by request.


=head2 _request_id => Str


=cut

1;