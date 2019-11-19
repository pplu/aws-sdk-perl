
package Paws::IoT::GetPercentilesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_PercentPair/;
  has Percentiles => (is => 'ro', isa => ArrayRef[IoT_PercentPair]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Percentiles' => {
                                  'type' => 'ArrayRef[IoT_PercentPair]',
                                  'class' => 'Paws::IoT::PercentPair'
                                }
             },
  'NameInRequest' => {
                       'Percentiles' => 'percentiles'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetPercentilesResponse

=head1 ATTRIBUTES


=head2 Percentiles => ArrayRef[IoT_PercentPair]

The percentile values of the aggregated fields.


=head2 _request_id => Str


=cut

