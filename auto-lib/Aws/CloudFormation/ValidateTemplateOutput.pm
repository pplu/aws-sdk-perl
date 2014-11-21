
package Aws::CloudFormation::ValidateTemplateOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str]');
  has CapabilitiesReason => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::TemplateParameter]');

}
1;