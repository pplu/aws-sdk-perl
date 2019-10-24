# Generated from json/callresult_class.tt

package Paws::WorkMail::CreateGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkMail::Types qw//;
  has GroupId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GroupId' => {
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


### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::CreateGroupResponse

=head1 ATTRIBUTES


=head2 GroupId => Str

The identifier of the group.


=head2 _request_id => Str


=cut

1;