
package Paws::RAM::GetResourceShareInvitationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RAM::Types qw/RAM_ResourceShareInvitation/;
  has NextToken => (is => 'ro', isa => Str);
  has ResourceShareInvitations => (is => 'ro', isa => ArrayRef[RAM_ResourceShareInvitation]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceShareInvitations' => {
                                               'class' => 'Paws::RAM::ResourceShareInvitation',
                                               'type' => 'ArrayRef[RAM_ResourceShareInvitation]'
                                             },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ResourceShareInvitations' => 'resourceShareInvitations',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::GetResourceShareInvitationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 ResourceShareInvitations => ArrayRef[RAM_ResourceShareInvitation]

Information about the invitations.


=head2 _request_id => Str


=cut

