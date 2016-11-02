
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

Indicates that there are additional results to retrieve.


=head2 Rules => ArrayRef[L<Paws::CloudWatchEvents::Rule>]

List of rules matching the specified criteria.


=head2 _request_id => Str


=cut

1;