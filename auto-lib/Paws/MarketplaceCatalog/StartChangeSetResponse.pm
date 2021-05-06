
package Paws::MarketplaceCatalog::StartChangeSetResponse;
  use Moose;
  has ChangeSetArn => (is => 'ro', isa => 'Str');
  has ChangeSetId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCatalog::StartChangeSetResponse

=head1 ATTRIBUTES


=head2 ChangeSetArn => Str

The ARN associated to the unique identifier generated for the request.


=head2 ChangeSetId => Str

Unique identifier generated for the request.


=head2 _request_id => Str


=cut

