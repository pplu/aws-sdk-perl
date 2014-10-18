
package Aws::CloudFormation::GetTemplateResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TemplateBody => (is => 'ro', isa => 'Str', traits => ['JSONAttribute'], method => 'Template', decode_as => 'JSON');

}
1;
