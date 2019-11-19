
package Paws::Quicksight::CreateGroupMembershipResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Quicksight::Types qw/Quicksight_GroupMember/;
  has GroupMember => (is => 'ro', isa => Quicksight_GroupMember);
  has RequestId => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GroupMember' => {
                                  'type' => 'Quicksight_GroupMember',
                                  'class' => 'Paws::Quicksight::GroupMember'
                                },
               'RequestId' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'Int'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::CreateGroupMembershipResponse

=head1 ATTRIBUTES


=head2 GroupMember => Quicksight_GroupMember

The group member.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The http status of the request.


=head2 _request_id => Str


=cut

