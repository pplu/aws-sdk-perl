
package Paws::SNS::ListTopicsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Topics => (is => 'ro', isa => 'ArrayRef[Paws::SNS::Topic]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::ListTopicsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Token to pass along to the next C<ListTopics> request. This element is
returned if there are additional topics to retrieve.


=head2 Topics => ArrayRef[L<Paws::SNS::Topic>]

A list of topic ARNs.


=head2 _request_id => Str


=cut

