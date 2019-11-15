
package Paws::QLDB::DescribeJournalS3ExportResponse;
  use Moose;
  has ExportDescription => (is => 'ro', isa => 'Paws::QLDB::JournalS3ExportDescription', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::DescribeJournalS3ExportResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportDescription => L<Paws::QLDB::JournalS3ExportDescription>

Information about the journal export job returned by a
C<DescribeJournalS3Export> request.


=head2 _request_id => Str


=cut

