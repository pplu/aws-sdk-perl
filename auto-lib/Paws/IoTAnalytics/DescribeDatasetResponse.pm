
package Paws::IoTAnalytics::DescribeDatasetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTAnalytics::Types qw/IoTAnalytics_Dataset/;
  has Dataset => (is => 'ro', isa => IoTAnalytics_Dataset);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Dataset' => 'dataset'
                     },
  'types' => {
               'Dataset' => {
                              'class' => 'Paws::IoTAnalytics::Dataset',
                              'type' => 'IoTAnalytics_Dataset'
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

Paws::IoTAnalytics::DescribeDatasetResponse

=head1 ATTRIBUTES


=head2 Dataset => IoTAnalytics_Dataset

An object that contains information about the data set.


=head2 _request_id => Str


=cut

