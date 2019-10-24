
package Paws::IoTAnalytics::DescribeDatastoreResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_Datastore IoTAnalytics_DatastoreStatistics/;
  has Datastore => (is => 'ro', isa => IoTAnalytics_Datastore);
  has Statistics => (is => 'ro', isa => IoTAnalytics_DatastoreStatistics);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Statistics' => {
                                 'class' => 'Paws::IoTAnalytics::DatastoreStatistics',
                                 'type' => 'IoTAnalytics_DatastoreStatistics'
                               },
               'Datastore' => {
                                'class' => 'Paws::IoTAnalytics::Datastore',
                                'type' => 'IoTAnalytics_Datastore'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Statistics' => 'statistics',
                       'Datastore' => 'datastore'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DescribeDatastoreResponse

=head1 ATTRIBUTES


=head2 Datastore => IoTAnalytics_Datastore

Information about the data store.


=head2 Statistics => IoTAnalytics_DatastoreStatistics

Additional statistical information about the data store. Included if
the 'includeStatistics' parameter is set to true in the request.


=head2 _request_id => Str


=cut

