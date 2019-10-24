
package Paws::ManagedBlockchain::CreateNetworkOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ManagedBlockchain::Types qw//;
  has MemberId => (is => 'ro', isa => Str);
  has NetworkId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NetworkId' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'MemberId' => {
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

Paws::ManagedBlockchain::CreateNetworkOutput

=head1 ATTRIBUTES


=head2 MemberId => Str

The unique identifier for the first member within the network.


=head2 NetworkId => Str

The unique identifier for the network.


=head2 _request_id => Str


=cut

