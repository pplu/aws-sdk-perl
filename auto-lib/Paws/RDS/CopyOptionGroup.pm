
package Paws::RDS::CopyOptionGroup {
  use Moose;
  has SourceOptionGroupIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has TargetOptionGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has TargetOptionGroupIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyOptionGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::CopyOptionGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CopyOptionGroupResult');
}
1;