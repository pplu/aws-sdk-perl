
package Paws::QLDB::ExportJournalToS3Response;
  use Moose;
  has ExportId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::ExportJournalToS3Response

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportId => Str

The UUID (represented in Base62-encoded text) that QLDB assigns to each
journal export job.

To describe your export request and check the status of the job, you
can use C<ExportId> to call C<DescribeJournalS3Export>.


=head2 _request_id => Str


=cut

