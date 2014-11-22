
package Paws::ImportExport::CancelJobOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Success => (is => 'ro', isa => 'Bool');

}
1;