
package Aws::EC2::DetachNetworkInterface {
  use Moose;
  has AttachmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'attachmentId' , required => 1);
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Force => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'force' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachNetworkInterface');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;