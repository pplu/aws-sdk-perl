
package Paws::CloudWatchEvents::ListRulesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::Rule]');


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListRulesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Indicates that there are additional results to retrieve.



=head2 Rules => ArrayRef[L<Paws::CloudWatchEvents::Rule>]

List of rules matching the specified criteria.




=cut

1;