
package Paws::RedShift::BatchModifyClusterSnapshotsOutputMessage;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::SnapshotErrorMessage]', request_name => 'SnapshotErrorMessage', traits => ['NameInRequest',]);
  has Resources => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'String', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::BatchModifyClusterSnapshotsOutputMessage

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::RedShift::SnapshotErrorMessage>]

A list of any errors returned.


=head2 Resources => ArrayRef[Str|Undef]

A list of the snapshots that were modified.


=head2 _request_id => Str


=cut

