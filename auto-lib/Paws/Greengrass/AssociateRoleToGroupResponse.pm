
package Paws::Greengrass::AssociateRoleToGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw//;
  has AssociatedAt => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AssociatedAt' => {
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

Paws::Greengrass::AssociateRoleToGroupResponse

=head1 ATTRIBUTES


=head2 AssociatedAt => Str

The time, in milliseconds since the epoch, when the role ARN was
associated with the group.


=head2 _request_id => Str


=cut

