
package Paws::Glacier::CreateVaultOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has location => (is => 'ro', isa => 'Str');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::CreateVaultOutput

=head1 ATTRIBUTES

=head2 location => Str

  

The URI of the vault that was created.











=cut

