
package Paws::RedShift::ModifySnapshotCopyRetentionPeriodResult;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Paws::RedShift::Cluster');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ModifySnapshotCopyRetentionPeriodResult

=head1 ATTRIBUTES


=head2 Cluster => L<Paws::RedShift::Cluster>




=head2 _request_id => Str


=cut

