
package Paws::Backup::StartRestoreJobOutput;
  use Moose;
  has RestoreJobId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::StartRestoreJobOutput

=head1 ATTRIBUTES


=head2 RestoreJobId => Str

Uniquely identifies the job that restores a recovery point.


=head2 _request_id => Str


=cut

