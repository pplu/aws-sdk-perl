
package Paws::ManagedBlockchain::ListNetworksOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ManagedBlockchain::Types qw/ManagedBlockchain_NetworkSummary/;
  has Networks => (is => 'ro', isa => ArrayRef[ManagedBlockchain_NetworkSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Networks' => {
                               'class' => 'Paws::ManagedBlockchain::NetworkSummary',
                               'type' => 'ArrayRef[ManagedBlockchain_NetworkSummary]'
                             },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
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

Paws::ManagedBlockchain::ListNetworksOutput

=head1 ATTRIBUTES


=head2 Networks => ArrayRef[ManagedBlockchain_NetworkSummary]

An array of C<NetworkSummary> objects that contain configuration
properties for each network.


=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 _request_id => Str


=cut

