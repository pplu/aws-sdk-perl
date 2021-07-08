
package Paws::FraudDetector::GetEntityTypesResult;
  use Moose;
  has EntityTypes => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::EntityType]', traits => ['NameInRequest'], request_name => 'entityTypes' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetEntityTypesResult

=head1 ATTRIBUTES


=head2 EntityTypes => ArrayRef[L<Paws::FraudDetector::EntityType>]

An array of entity types.


=head2 NextToken => Str

The next page token.


=head2 _request_id => Str


=cut

1;