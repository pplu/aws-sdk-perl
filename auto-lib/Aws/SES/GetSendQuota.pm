
package Aws::SES::GetSendQuota {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSendQuota');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SES::GetSendQuotaResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetSendQuotaResult');
}
1;