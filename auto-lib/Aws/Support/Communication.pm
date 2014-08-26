package Aws::Support::Communication {
  use Moose;
  with ('AWS::API::ResultParser');
  has attachmentSet => (is => 'ro', isa => 'ArrayRef[Aws::Support::AttachmentDetails]');
  has body => (is => 'ro', isa => 'Str');
  has caseId => (is => 'ro', isa => 'Str');
  has submittedBy => (is => 'ro', isa => 'Str');
  has timeCreated => (is => 'ro', isa => 'Str');
}
1
