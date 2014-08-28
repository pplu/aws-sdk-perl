
package Aws::EC2::BundleInstance {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has Storage => (is => 'ro', isa => 'Aws::EC2::Storage', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BundleInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::BundleInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
