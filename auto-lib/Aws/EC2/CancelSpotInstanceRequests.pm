
package Aws::EC2::CancelSpotInstanceRequests {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has SpotInstanceRequestIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'SpotInstanceRequestId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelSpotInstanceRequests');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CancelSpotInstanceRequestsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;