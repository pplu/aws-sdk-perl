
package Paws::CognitoSync::DescribeDataset {
  use Moose;
  has DatasetName => (is => 'ro', isa => 'Str', required => 1);
  has IdentityId => (is => 'ro', isa => 'Str', required => 1);
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDataset');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoSync::DescribeDatasetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDatasetResult');
}
1;