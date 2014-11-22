
package Paws::Support::AddCommunicationToCase {
  use Moose;
  has attachmentSetId => (is => 'ro', isa => 'Str');
  has caseId => (is => 'ro', isa => 'Str');
  has ccEmailAddresses => (is => 'ro', isa => 'ArrayRef[Str]');
  has communicationBody => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddCommunicationToCase');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Support::AddCommunicationToCaseResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;