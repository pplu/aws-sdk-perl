
package Aws::EC2::DescribeSnapshotAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has SnapshotId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSnapshotAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::DescribeSnapshotAttributeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
