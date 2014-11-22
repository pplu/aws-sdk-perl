
package Paws::RDS::CopyDBParameterGroup {
  use Moose;
  has SourceDBParameterGroupIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has TargetDBParameterGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has TargetDBParameterGroupIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyDBParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::CopyDBParameterGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CopyDBParameterGroupResult');
}
1;