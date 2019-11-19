
package Paws::Quicksight::ListUserGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::Quicksight::Types qw/Quicksight_Group/;
  has GroupList => (is => 'ro', isa => ArrayRef[Quicksight_Group]);
  has NextToken => (is => 'ro', isa => Str);
  has RequestId => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GroupList' => {
                                'type' => 'ArrayRef[Quicksight_Group]',
                                'class' => 'Paws::Quicksight::Group'
                              },
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
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::ListUserGroupsResponse

=head1 ATTRIBUTES


=head2 GroupList => ArrayRef[Quicksight_Group]

The list of groups the user is a member of.


=head2 NextToken => Str

A pagination token that can be used in a subsequent request.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

