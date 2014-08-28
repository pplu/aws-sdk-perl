
package Aws::SNS::RemovePermission {
  use Moose;
  has Label => (is => 'ro', isa => 'Str', required => 1);
  has TopicArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemovePermission');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
  