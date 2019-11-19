
package Paws::QLDB::DescribeJournalS3ExportResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::QLDB::Types qw/QLDB_JournalS3ExportDescription/;
  has ExportDescription => (is => 'ro', isa => QLDB_JournalS3ExportDescription, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ExportDescription' => 1
                  },
  'types' => {
               'ExportDescription' => {
                                        'type' => 'QLDB_JournalS3ExportDescription',
                                        'class' => 'Paws::QLDB::JournalS3ExportDescription'
                                      },
               '_request_id' => {
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

Paws::QLDB::DescribeJournalS3ExportResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportDescription => QLDB_JournalS3ExportDescription

Information about the journal export job returned by a
C<DescribeJournalS3Export> request.


=head2 _request_id => Str


=cut

