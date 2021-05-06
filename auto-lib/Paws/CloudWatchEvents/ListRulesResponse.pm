
package Paws::CloudWatchEvents::ListRulesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::Rule]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListRulesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Indicates whether there are additional results to retrieve. If there
are no more results, the value is null.


=head2 Rules => ArrayRef[L<Paws::CloudWatchEvents::Rule>]

The rules that match the specified criteria.


=head2 _request_id => Str


=cut

1;