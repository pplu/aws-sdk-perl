# Generated from callresult_class.tt

package Paws::SES::GetSendStatisticsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SES::Types qw/SES_SendDataPoint/;
  has SendDataPoints => (is => 'ro', isa => ArrayRef[SES_SendDataPoint]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SendDataPoints' => {
                                     'class' => 'Paws::SES::SendDataPoint',
                                     'type' => 'ArrayRef[SES_SendDataPoint]'
                                   }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::GetSendStatisticsResponse

=head1 ATTRIBUTES


=head2 SendDataPoints => ArrayRef[SES_SendDataPoint]

A list of data points, each of which represents 15 minutes of activity.


=head2 _request_id => Str


=cut

