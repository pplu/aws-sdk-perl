
package Paws::Quicksight::ListUsersResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::Quicksight::Types qw/Quicksight_User/;
  has NextToken => (is => 'ro', isa => Str);
  has RequestId => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Int);
  has UserList => (is => 'ro', isa => ArrayRef[Quicksight_User]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UserList' => {
                               'class' => 'Paws::Quicksight::User',
                               'type' => 'ArrayRef[Quicksight_User]'
                             },
               'Status' => {
                             'type' => 'Int'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'RequestId' => {
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

Paws::Quicksight::ListUsersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token that can be used in a subsequent request.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The http status of the request.


=head2 UserList => ArrayRef[Quicksight_User]

The list of users.


=head2 _request_id => Str


=cut

