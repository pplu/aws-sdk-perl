
package Paws::Quicksight::ListGroupMembershipsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::Quicksight::Types qw/Quicksight_GroupMember/;
  has GroupMemberList => (is => 'ro', isa => ArrayRef[Quicksight_GroupMember]);
  has NextToken => (is => 'ro', isa => Str);
  has RequestId => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RequestId' => {
                                'type' => 'Str'
                              },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Status' => {
                             'type' => 'Int'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'GroupMemberList' => {
                                      'class' => 'Paws::Quicksight::GroupMember',
                                      'type' => 'ArrayRef[Quicksight_GroupMember]'
                                    }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::ListGroupMembershipsResponse

=head1 ATTRIBUTES


=head2 GroupMemberList => ArrayRef[Quicksight_GroupMember]

The list of the members of the group.


=head2 NextToken => Str

A pagination token that can be used in a subsequent request.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The http status of the request.


=head2 _request_id => Str


=cut

