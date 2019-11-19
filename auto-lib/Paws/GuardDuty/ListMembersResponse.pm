
package Paws::GuardDuty::ListMembersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GuardDuty::Types qw/GuardDuty_Member/;
  has Members => (is => 'ro', isa => ArrayRef[GuardDuty_Member]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Members' => 'members'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Members' => {
                              'type' => 'ArrayRef[GuardDuty_Member]',
                              'class' => 'Paws::GuardDuty::Member'
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

Paws::GuardDuty::ListMembersResponse

=head1 ATTRIBUTES


=head2 Members => ArrayRef[GuardDuty_Member]

A list of members.


=head2 NextToken => Str

Pagination parameter to be used on the next list operation to retrieve
more items.


=head2 _request_id => Str


=cut

