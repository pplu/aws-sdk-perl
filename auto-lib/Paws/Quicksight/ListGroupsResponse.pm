
package Paws::Quicksight::ListGroupsResponse;
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
               'NextToken' => {
                                'type' => 'Str'
                              },
               'RequestId' => {
                                'type' => 'Str'
                              },
               'GroupList' => {
                                'class' => 'Paws::Quicksight::Group',
                                'type' => 'ArrayRef[Quicksight_Group]'
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

Paws::Quicksight::ListGroupsResponse

=head1 ATTRIBUTES


=head2 GroupList => ArrayRef[Quicksight_Group]

The list of the groups.


=head2 NextToken => Str

A pagination token that can be used in a subsequent request.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The http status of the request.


=head2 _request_id => Str


=cut

