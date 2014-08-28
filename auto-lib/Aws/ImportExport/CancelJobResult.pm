
package Aws::ImportExport::CancelJobResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Success => (is => 'ro', isa => 'Bool');

}
1;