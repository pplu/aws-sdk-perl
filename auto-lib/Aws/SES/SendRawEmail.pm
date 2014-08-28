
package Aws::SES::SendRawEmail {
  use Moose;
  has Destinations => (is => 'ro', isa => 'ArrayRef[Str]');
  has RawMessage => (is => 'ro', isa => 'Aws::SES::RawMessage', required => 1);
  has Source => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendRawEmail');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SES::SendRawEmailResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SendRawEmailResult');
}
1;
