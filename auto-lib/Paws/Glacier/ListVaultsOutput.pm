
package Paws::Glacier::ListVaultsOutput;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has VaultList => (is => 'ro', isa => 'ArrayRef[Paws::Glacier::DescribeVaultOutput]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::ListVaultsOutput

=head1 ATTRIBUTES


=head2 Marker => Str

The vault ARN at which to continue pagination of the results. You use
the marker in another List Vaults request to obtain more vaults in the
list.


=head2 VaultList => ArrayRef[L<Paws::Glacier::DescribeVaultOutput>]

List of vaults.


=head2 _request_id => Str


=cut

