
package Paws::Greengrass::ListSubscriptionDefinitionsResponse;
  use Moose;
  has Definitions => (is => 'ro', isa => 'ArrayRef[Paws::Greengrass::DefinitionInformation]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ListSubscriptionDefinitionsResponse

=head1 ATTRIBUTES


=head2 Definitions => ArrayRef[L<Paws::Greengrass::DefinitionInformation>]

Definitions


=head2 NextToken => Str

The token for the next set of results, or ''null'' if there are no
additional results.


=head2 _request_id => Str


=cut

