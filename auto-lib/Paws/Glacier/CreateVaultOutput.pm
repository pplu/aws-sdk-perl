
package Paws::Glacier::CreateVaultOutput;
  use Moose;
  has Location => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Location');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::CreateVaultOutput

=head1 ATTRIBUTES


=head2 Location => Str

The URI of the vault that was created.


=head2 _request_id => Str


=cut

