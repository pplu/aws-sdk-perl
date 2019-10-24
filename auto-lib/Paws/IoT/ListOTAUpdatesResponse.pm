
package Paws::IoT::ListOTAUpdatesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_OTAUpdateSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has OtaUpdates => (is => 'ro', isa => ArrayRef[IoT_OTAUpdateSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'OtaUpdates' => {
                                 'class' => 'Paws::IoT::OTAUpdateSummary',
                                 'type' => 'ArrayRef[IoT_OTAUpdateSummary]'
                               }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'OtaUpdates' => 'otaUpdates'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListOTAUpdatesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token to use to get the next set of results.


=head2 OtaUpdates => ArrayRef[IoT_OTAUpdateSummary]

A list of OTA update jobs.


=head2 _request_id => Str


=cut

