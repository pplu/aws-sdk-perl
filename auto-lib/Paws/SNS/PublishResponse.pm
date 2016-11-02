
package Paws::SNS::PublishResponse;
  use Moose;
  has MessageId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::PublishResponse

=head1 ATTRIBUTES


=head2 MessageId => Str

Unique identifier assigned to the published message.

Length Constraint: Maximum 100 characters


=head2 _request_id => Str


=cut

