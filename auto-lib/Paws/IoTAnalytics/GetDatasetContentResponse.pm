
package Paws::IoTAnalytics::GetDatasetContentResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_DatasetEntry IoTAnalytics_DatasetContentStatus/;
  has Entries => (is => 'ro', isa => ArrayRef[IoTAnalytics_DatasetEntry]);
  has Status => (is => 'ro', isa => IoTAnalytics_DatasetContentStatus);
  has Timestamp => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Timestamp' => 'timestamp',
                       'Status' => 'status',
                       'Entries' => 'entries'
                     },
  'types' => {
               'Entries' => {
                              'type' => 'ArrayRef[IoTAnalytics_DatasetEntry]',
                              'class' => 'Paws::IoTAnalytics::DatasetEntry'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'class' => 'Paws::IoTAnalytics::DatasetContentStatus',
                             'type' => 'IoTAnalytics_DatasetContentStatus'
                           },
               'Timestamp' => {
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

Paws::IoTAnalytics::GetDatasetContentResponse

=head1 ATTRIBUTES


=head2 Entries => ArrayRef[IoTAnalytics_DatasetEntry]

A list of "DatasetEntry" objects.


=head2 Status => IoTAnalytics_DatasetContentStatus

The status of the data set content.


=head2 Timestamp => Str

The time when the request was made.


=head2 _request_id => Str


=cut

