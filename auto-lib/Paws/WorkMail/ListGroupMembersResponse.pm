# Generated from json/callresult_class.tt

package Paws::WorkMail::ListGroupMembersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkMail::Types qw/WorkMail_Member/;
  has Members => (is => 'ro', isa => ArrayRef[WorkMail_Member]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Members' => {
                              'class' => 'Paws::WorkMail::Member',
                              'type' => 'ArrayRef[WorkMail_Member]'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListGroupMembersResponse

=head1 ATTRIBUTES


=head2 Members => ArrayRef[WorkMail_Member]

The members associated to the group.


=head2 NextToken => Str

The token to use to retrieve the next page of results. The first call
does not contain any tokens.


=head2 _request_id => Str


=cut

1;