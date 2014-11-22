
package Paws::CloudFormation::ValidateTemplateOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str]');
  has CapabilitiesReason => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::TemplateParameter]');

}
1;