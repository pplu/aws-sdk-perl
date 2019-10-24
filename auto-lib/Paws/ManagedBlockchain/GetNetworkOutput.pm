
package Paws::ManagedBlockchain::GetNetworkOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ManagedBlockchain::Types qw/ManagedBlockchain_Network/;
  has Network => (is => 'ro', isa => ManagedBlockchain_Network);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Network' => {
                              'class' => 'Paws::ManagedBlockchain::Network',
                              'type' => 'ManagedBlockchain_Network'
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

Paws::ManagedBlockchain::GetNetworkOutput

=head1 ATTRIBUTES


=head2 Network => ManagedBlockchain_Network

An object containing network configuration parameters.


=head2 _request_id => Str


=cut

