
package Aws::RDS::CreateOptionGroup {
  use Moose;
  has EngineName => (is => 'ro', isa => 'Str', required => 1);
  has MajorEngineVersion => (is => 'ro', isa => 'Str', required => 1);
  has OptionGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has OptionGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Tag]', traits => ['NameInRequest'], request_name => 'Tag' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateOptionGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RDS::CreateOptionGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateOptionGroupResult');
}
1;
  