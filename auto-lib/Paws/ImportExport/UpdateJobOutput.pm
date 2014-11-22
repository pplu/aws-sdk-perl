
package Paws::ImportExport::UpdateJobOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Success => (is => 'ro', isa => 'Bool');
  has WarningMessage => (is => 'ro', isa => 'Str');

}
1;