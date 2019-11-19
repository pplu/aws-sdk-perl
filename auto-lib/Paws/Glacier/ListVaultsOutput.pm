
package Paws::Glacier::ListVaultsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glacier::Types qw/Glacier_DescribeVaultOutput/;
  has Marker => (is => 'ro', isa => Str);
  has VaultList => (is => 'ro', isa => ArrayRef[Glacier_DescribeVaultOutput]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VaultList' => {
                                'type' => 'ArrayRef[Glacier_DescribeVaultOutput]',
                                'class' => 'Paws::Glacier::DescribeVaultOutput'
                              },
               'Marker' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::ListVaultsOutput

=head1 ATTRIBUTES


=head2 Marker => Str

The vault ARN at which to continue pagination of the results. You use
the marker in another List Vaults request to obtain more vaults in the
list.


=head2 VaultList => ArrayRef[Glacier_DescribeVaultOutput]

List of vaults.


=head2 _request_id => Str


=cut

