
package Paws::Pinpoint::MessageBody;
  use Moose;
  has Message => (is => 'ro', isa => 'Str');
  has RequestID => (is => 'ro', isa => 'Str');

<<<<<<< HEAD
  has _request_id => (is => 'ro', isa => 'Str');
=======
>>>>>>> 186ed52fd2853f25b0e1410d04060db03e2f042c
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::MessageBody

=head1 ATTRIBUTES


=head2 Message => Str

The message that's returned from the API.


=head2 RequestID => Str

The unique identifier for the request or response.


=head2 _request_id => Str


=cut

