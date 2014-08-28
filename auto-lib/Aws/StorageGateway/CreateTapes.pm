
package Aws::StorageGateway::CreateTapes {
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has NumTapesToCreate => (is => 'ro', isa => 'Int', required => 1);
  has TapeBarcodePrefix => (is => 'ro', isa => 'Str', required => 1);
  has TapeSizeInBytes => (is => 'ro', isa => 'Num', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTapes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::StorageGateway::CreateTapesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;