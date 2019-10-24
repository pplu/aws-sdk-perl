
package Paws::IoTAnalytics::CreateDatastoreResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_RetentionPeriod/;
  has DatastoreArn => (is => 'ro', isa => Str);
  has DatastoreName => (is => 'ro', isa => Str);
  has RetentionPeriod => (is => 'ro', isa => IoTAnalytics_RetentionPeriod);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RetentionPeriod' => {
                                      'class' => 'Paws::IoTAnalytics::RetentionPeriod',
                                      'type' => 'IoTAnalytics_RetentionPeriod'
                                    },
               'DatastoreArn' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DatastoreName' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'RetentionPeriod' => 'retentionPeriod',
                       'DatastoreArn' => 'datastoreArn',
                       'DatastoreName' => 'datastoreName'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::CreateDatastoreResponse

=head1 ATTRIBUTES


=head2 DatastoreArn => Str

The ARN of the data store.


=head2 DatastoreName => Str

The name of the data store.


=head2 RetentionPeriod => IoTAnalytics_RetentionPeriod

How long, in days, message data is kept for the data store.


=head2 _request_id => Str


=cut

