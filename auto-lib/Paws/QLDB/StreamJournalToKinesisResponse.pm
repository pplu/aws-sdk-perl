
package Paws::QLDB::StreamJournalToKinesisResponse;
  use Moose;
  has StreamId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::StreamJournalToKinesisResponse

=head1 ATTRIBUTES


=head2 StreamId => Str

The UUID (represented in Base62-encoded text) that QLDB assigns to each
QLDB journal stream.


=head2 _request_id => Str


=cut

