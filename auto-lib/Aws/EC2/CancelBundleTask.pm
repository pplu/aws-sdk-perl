
package Aws::EC2::CancelBundleTask {
  use Moose;
  has BundleId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelBundleTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CancelBundleTaskResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;