
package Paws::FSX::CreateBackupResponse;
  use Moose;
  has Backup => (is => 'ro', isa => 'Paws::FSX::Backup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CreateBackupResponse

=head1 ATTRIBUTES


=head2 Backup => L<Paws::FSX::Backup>

A description of the backup.


=head2 _request_id => Str


=cut

1;