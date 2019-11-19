
package Paws::QLDB::ExportJournalToS3Response;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::QLDB::Types qw//;
  has ExportId => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ExportId' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ExportId' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::ExportJournalToS3Response

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportId => Str

The unique ID that QLDB assigns to each journal export job.

To describe your export request and check the status of the job, you
can use C<ExportId> to call C<DescribeJournalS3Export>.


=head2 _request_id => Str


=cut

