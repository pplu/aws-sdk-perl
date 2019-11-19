
package Paws::Quicksight::DeleteGroupResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Quicksight::Types qw//;
  has RequestId => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Int'
                           },
               '_request_id' => {
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

Paws::Quicksight::DeleteGroupResponse

=head1 ATTRIBUTES


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The http status of the request.


=head2 _request_id => Str


=cut

