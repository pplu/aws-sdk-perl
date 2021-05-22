
package Paws::QLDB::DescribeJournalKinesisStreamResponse;
  use Moose;
  has Stream => (is => 'ro', isa => 'Paws::QLDB::JournalKinesisStreamDescription');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::DescribeJournalKinesisStreamResponse

=head1 ATTRIBUTES


=head2 Stream => L<Paws::QLDB::JournalKinesisStreamDescription>

Information about the QLDB journal stream returned by a
C<DescribeJournalS3Export> request.


=head2 _request_id => Str


=cut

