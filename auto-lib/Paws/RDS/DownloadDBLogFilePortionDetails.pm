# Generated from callresult_class.tt

package Paws::RDS::DownloadDBLogFilePortionDetails;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::RDS::Types qw//;
  has AdditionalDataPending => (is => 'ro', isa => Bool);
  has LogFileData => (is => 'ro', isa => Str);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LogFileData' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           },
               'AdditionalDataPending' => {
                                            'type' => 'Bool'
                                          }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DownloadDBLogFilePortionDetails

=head1 ATTRIBUTES


=head2 AdditionalDataPending => Bool

Boolean value that if true, indicates there is more data to be
downloaded.


=head2 LogFileData => Str

Entries from the specified log file.


=head2 Marker => Str

A pagination token that can be used in a subsequent
DownloadDBLogFilePortion request.


=head2 _request_id => Str


=cut

