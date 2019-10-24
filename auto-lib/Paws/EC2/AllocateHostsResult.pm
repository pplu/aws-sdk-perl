
package Paws::EC2::AllocateHostsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::EC2::Types qw//;
  has HostIds => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'HostIds' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            }
             },
  'NameInRequest' => {
                       'HostIds' => 'hostIdSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AllocateHostsResult

=head1 ATTRIBUTES


=head2 HostIds => ArrayRef[Str|Undef]

The ID of the allocated Dedicated Host. This is used to launch an
instance onto a specific host.


=head2 _request_id => Str


=cut

