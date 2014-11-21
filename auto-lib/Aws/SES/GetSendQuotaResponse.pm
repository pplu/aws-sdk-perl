
package Aws::SES::GetSendQuotaResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has Max24HourSend => (is => 'ro', isa => 'Num');
  has MaxSendRate => (is => 'ro', isa => 'Num');
  has SentLast24Hours => (is => 'ro', isa => 'Num');

}
1;