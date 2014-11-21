
package Aws::Route53Domains::GetOperationDetail {
  use Moose;
  has OperationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetOperationDetail');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Route53Domains::GetOperationDetailResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;