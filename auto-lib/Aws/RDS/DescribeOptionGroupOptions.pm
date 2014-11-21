
package Aws::RDS::DescribeOptionGroupOptions {
  use Moose;
  has EngineName => (is => 'ro', isa => 'Str', required => 1);
  has MajorEngineVersion => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOptionGroupOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RDS::OptionGroupOptionsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeOptionGroupOptionsResult');
}
1;