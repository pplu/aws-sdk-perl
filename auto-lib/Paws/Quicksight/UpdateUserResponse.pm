
package Paws::Quicksight::UpdateUserResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Quicksight::Types qw/Quicksight_User/;
  has RequestId => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Int);
  has User => (is => 'ro', isa => Quicksight_User);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RequestId' => {
                                'type' => 'Str'
                              },
               'Status' => {
                             'type' => 'Int'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'User' => {
                           'class' => 'Paws::Quicksight::User',
                           'type' => 'Quicksight_User'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UpdateUserResponse

=head1 ATTRIBUTES


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The http status of the request.


=head2 User => Quicksight_User

The Amazon QuickSight user.


=head2 _request_id => Str


=cut

