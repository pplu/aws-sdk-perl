
package Paws::Macie2::TestCustomDataIdentifierResponse;
  use Moose;
  has MatchCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'matchCount');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::TestCustomDataIdentifierResponse

=head1 ATTRIBUTES


=head2 MatchCount => Int

The number of instances of sample text that matched the detection
criteria specified in the custom data identifier.


=head2 _request_id => Str


=cut

