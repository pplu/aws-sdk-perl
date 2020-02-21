
package Paws::Detective::CreateGraphResponse;
  use Moose;
  has GraphArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::CreateGraphResponse

=head1 ATTRIBUTES


=head2 GraphArn => Str

The ARN of the new behavior graph.


=head2 _request_id => Str


=cut

