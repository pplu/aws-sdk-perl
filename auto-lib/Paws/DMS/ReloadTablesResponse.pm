
package Paws::DMS::ReloadTablesResponse;
  use Moose;
  has ReplicationTaskArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ReloadTablesResponse

=head1 ATTRIBUTES


=head2 ReplicationTaskArn => Str

The Amazon Resource Name (ARN) of the replication task.


=head2 _request_id => Str


=cut

1;