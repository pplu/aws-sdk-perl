
package Aws::Support::CreateCase {
  use Moose;
  has attachmentSetId => (is => 'ro', isa => 'Str');
  has categoryCode => (is => 'ro', isa => 'Str');
  has ccEmailAddresses => (is => 'ro', isa => 'ArrayRef[Str]');
  has communicationBody => (is => 'ro', isa => 'Str', required => 1);
  has issueType => (is => 'ro', isa => 'Str');
  has language => (is => 'ro', isa => 'Str');
  has serviceCode => (is => 'ro', isa => 'Str');
  has severityCode => (is => 'ro', isa => 'Str');
  has subject => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCase');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Support::CreateCaseResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

1;
