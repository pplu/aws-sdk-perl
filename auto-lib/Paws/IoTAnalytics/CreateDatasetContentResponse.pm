
package Paws::IoTAnalytics::CreateDatasetContentResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTAnalytics::Types qw//;
  has VersionId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'VersionId' => 'versionId'
                     },
  'types' => {
               'VersionId' => {
                                'type' => 'Str'
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

Paws::IoTAnalytics::CreateDatasetContentResponse

=head1 ATTRIBUTES


=head2 VersionId => Str

The version ID of the data set contents which are being created.


=head2 _request_id => Str


=cut

