
package Aws::CloudSearch::DescribeIndexFields {
  use Moose;
  has Deployed => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has FieldNames => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeIndexFields');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DescribeIndexFieldsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeIndexFieldsResult');
}
1;
