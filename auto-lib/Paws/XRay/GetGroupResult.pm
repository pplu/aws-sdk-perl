
package Paws::XRay::GetGroupResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::XRay::Types qw/XRay_Group/;
  has Group => (is => 'ro', isa => XRay_Group);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Group' => {
                            'class' => 'Paws::XRay::Group',
                            'type' => 'XRay_Group'
                          }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetGroupResult

=head1 ATTRIBUTES


=head2 Group => XRay_Group

The group that was requested. Contains the name of the group, the ARN
of the group, and the filter expression that assigned to the group.


=head2 _request_id => Str


=cut

