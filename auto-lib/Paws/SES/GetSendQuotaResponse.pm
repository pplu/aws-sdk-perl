
package Paws::SES::GetSendQuotaResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Max24HourSend => (is => 'ro', isa => 'Num');
  has MaxSendRate => (is => 'ro', isa => 'Num');
  has SentLast24Hours => (is => 'ro', isa => 'Num');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::GetSendQuotaResponse

=head1 ATTRIBUTES

=head2 Max24HourSend => Num

  

The maximum number of emails the user is allowed to send in a 24-hour
interval.









=head2 MaxSendRate => Num

  

The maximum number of emails the user is allowed to send per second.









=head2 SentLast24Hours => Num

  

The number of emails sent during the previous 24 hours.











=cut

