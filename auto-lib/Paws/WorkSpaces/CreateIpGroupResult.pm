# Generated from json/callresult_class.tt

package Paws::WorkSpaces::CreateIpGroupResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkSpaces::Types qw//;
  has GroupId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'GroupId' => {
                              'type' => 'Str'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::CreateIpGroupResult

=head1 ATTRIBUTES


=head2 GroupId => Str

The identifier of the group.


=head2 _request_id => Str


=cut

1;