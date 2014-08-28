
package Aws::SES::GetSendStatisticsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has SendDataPoints => (is => 'ro', isa => 'ArrayRef[Aws::SES::SendDataPoint]');

}
1;