
package Paws::FSX::CopyBackupResponse;
  use Moose;
  has Backup => (is => 'ro', isa => 'Paws::FSX::Backup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CopyBackupResponse

=head1 ATTRIBUTES


=head2 Backup => L<Paws::FSX::Backup>




=head2 _request_id => Str


=cut

1;