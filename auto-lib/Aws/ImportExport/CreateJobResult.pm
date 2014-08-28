
package Aws::ImportExport::CreateJobResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AwsShippingAddress => (is => 'ro', isa => 'Str');
  has JobId => (is => 'ro', isa => 'Str');
  has JobType => (is => 'ro', isa => 'Str');
  has Signature => (is => 'ro', isa => 'Str');
  has SignatureFileContents => (is => 'ro', isa => 'Str');
  has WarningMessage => (is => 'ro', isa => 'Str');

}
1;