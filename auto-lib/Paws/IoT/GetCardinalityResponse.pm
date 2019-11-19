
package Paws::IoT::GetCardinalityResponse;
  use Moose;
  has Cardinality => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'cardinality');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetCardinalityResponse

=head1 ATTRIBUTES


=head2 Cardinality => Int

The approximate count of unique values that match the query.


=head2 _request_id => Str


=cut

