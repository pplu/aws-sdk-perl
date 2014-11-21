
package Aws::CloudFormation::GetTemplateOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has TemplateBody => (is => 'ro', isa => 'Str');

}
1;