
package Paws::IoTAnalytics::CreateDatasetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_RetentionPeriod/;
  has DatasetArn => (is => 'ro', isa => Str);
  has DatasetName => (is => 'ro', isa => Str);
  has RetentionPeriod => (is => 'ro', isa => IoTAnalytics_RetentionPeriod);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DatasetArn' => {
                                 'type' => 'Str'
                               },
               'RetentionPeriod' => {
                                      'class' => 'Paws::IoTAnalytics::RetentionPeriod',
                                      'type' => 'IoTAnalytics_RetentionPeriod'
                                    },
               'DatasetName' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DatasetArn' => 'datasetArn',
                       'RetentionPeriod' => 'retentionPeriod',
                       'DatasetName' => 'datasetName'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::CreateDatasetResponse

=head1 ATTRIBUTES


=head2 DatasetArn => Str

The ARN of the data set.


=head2 DatasetName => Str

The name of the data set.


=head2 RetentionPeriod => IoTAnalytics_RetentionPeriod

How long, in days, data set contents are kept for the data set.


=head2 _request_id => Str


=cut

