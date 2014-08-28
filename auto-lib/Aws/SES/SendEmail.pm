
package Aws::SES::SendEmail {
  use Moose;
  has Destination => (is => 'ro', isa => 'Aws::SES::Destination', required => 1);
  has Message => (is => 'ro', isa => 'Aws::SES::Message', required => 1);
  has ReplyToAddresses => (is => 'ro', isa => 'ArrayRef[Str]');
  has ReturnPath => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendEmail');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SES::SendEmailResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SendEmailResult');
}
1;
  