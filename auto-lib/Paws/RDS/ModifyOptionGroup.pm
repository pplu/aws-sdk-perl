
package Paws::RDS::ModifyOptionGroup {
  use Moose;
  has ApplyImmediately => (is => 'ro', isa => 'Bool');
  has OptionGroupName => (is => 'ro', isa => 'Str', required => 1);
  has OptionsToInclude => (is => 'ro', isa => 'ArrayRef[Paws::RDS::OptionConfiguration]');
  has OptionsToRemove => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyOptionGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::ModifyOptionGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyOptionGroupResult');
}
1;