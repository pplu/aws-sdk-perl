
package Paws::IoT::GetStatisticsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_Statistics/;
  has Statistics => (is => 'ro', isa => IoT_Statistics);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Statistics' => {
                                 'class' => 'Paws::IoT::Statistics',
                                 'type' => 'IoT_Statistics'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Statistics' => 'statistics'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetStatisticsResponse

=head1 ATTRIBUTES


=head2 Statistics => IoT_Statistics

The statistics returned by the Fleet Indexing service based on the
query and aggregation field.


=head2 _request_id => Str


=cut

