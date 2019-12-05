
package Paws::Schemas::LockServiceLinkedRoleResponse;
  use Moose;
  has CanBeDeleted => (is => 'ro', isa => 'Bool');
  has ReasonOfFailure => (is => 'ro', isa => 'Str');
  has RelatedResources => (is => 'ro', isa => 'ArrayRef[Paws::Schemas::DiscovererSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::LockServiceLinkedRoleResponse

=head1 ATTRIBUTES


=head2 CanBeDeleted => Bool




=head2 ReasonOfFailure => Str




=head2 RelatedResources => ArrayRef[L<Paws::Schemas::DiscovererSummary>]




=head2 _request_id => Str


=cut

