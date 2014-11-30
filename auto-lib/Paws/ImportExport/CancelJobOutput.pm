
package Paws::ImportExport::CancelJobOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Success => (is => 'ro', isa => 'Bool');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImportExport::CancelJobOutput

=head1 ATTRIBUTES

=head2 Success => Bool

  


=cut

