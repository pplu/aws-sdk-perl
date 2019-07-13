
package Paws::ElastiCache::UpdateActionResultsMessage;
  use Moose;
  has ProcessedUpdateActions => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::ProcessedUpdateAction]', request_name => 'ProcessedUpdateAction', traits => ['NameInRequest',]);
  has UnprocessedUpdateActions => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::UnprocessedUpdateAction]', request_name => 'UnprocessedUpdateAction', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::UpdateActionResultsMessage

=head1 ATTRIBUTES


=head2 ProcessedUpdateActions => ArrayRef[L<Paws::ElastiCache::ProcessedUpdateAction>]

Update actions that have been processed successfully


=head2 UnprocessedUpdateActions => ArrayRef[L<Paws::ElastiCache::UnprocessedUpdateAction>]

Update actions that haven't been processed successfully


=head2 _request_id => Str


=cut

