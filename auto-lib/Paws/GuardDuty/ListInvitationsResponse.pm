
package Paws::GuardDuty::ListInvitationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GuardDuty::Types qw/GuardDuty_Invitation/;
  has Invitations => (is => 'ro', isa => ArrayRef[GuardDuty_Invitation]);
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
               'Invitations' => {
                                  'class' => 'Paws::GuardDuty::Invitation',
                                  'type' => 'ArrayRef[GuardDuty_Invitation]'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Invitations' => 'invitations'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListInvitationsResponse

=head1 ATTRIBUTES


=head2 Invitations => ArrayRef[GuardDuty_Invitation]

A list of invitation descriptions.


=head2 NextToken => Str

Pagination parameter to be used on the next list operation to retrieve
more items.


=head2 _request_id => Str


=cut

