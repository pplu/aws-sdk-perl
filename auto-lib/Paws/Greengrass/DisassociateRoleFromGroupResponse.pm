
package Paws::Greengrass::DisassociateRoleFromGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw//;
  has DisassociatedAt => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DisassociatedAt' => {
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

Paws::Greengrass::DisassociateRoleFromGroupResponse

=head1 ATTRIBUTES


=head2 DisassociatedAt => Str

The time, in milliseconds since the epoch, when the role was
disassociated from the group.


=head2 _request_id => Str


=cut

