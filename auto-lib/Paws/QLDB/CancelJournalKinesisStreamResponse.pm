
package Paws::QLDB::CancelJournalKinesisStreamResponse;
  use Moose;
  has StreamId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::CancelJournalKinesisStreamResponse

=head1 ATTRIBUTES


=head2 StreamId => Str

The UUID (Base62-encoded text) of the canceled QLDB journal stream.


=head2 _request_id => Str


=cut

