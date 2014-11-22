
package Paws::CloudFormation::GetTemplateOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has TemplateBody => (is => 'ro', isa => 'Str');

}
1;