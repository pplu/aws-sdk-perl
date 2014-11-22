
package Paws::SES::GetSendStatisticsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has SendDataPoints => (is => 'ro', isa => 'ArrayRef[Paws::SES::SendDataPoint]');

}
1;