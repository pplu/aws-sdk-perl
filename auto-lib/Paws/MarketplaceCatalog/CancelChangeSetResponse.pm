
package Paws::MarketplaceCatalog::CancelChangeSetResponse;
  use Moose;
  has ChangeSetArn => (is => 'ro', isa => 'Str');
  has ChangeSetId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCatalog::CancelChangeSetResponse

=head1 ATTRIBUTES


=head2 ChangeSetArn => Str

The ARN associated with the change set referenced in this request.


=head2 ChangeSetId => Str

The unique identifier for the change set referenced in this request.


=head2 _request_id => Str


=cut

