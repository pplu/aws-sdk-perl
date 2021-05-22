
package Paws::AuditManager::GetServicesInScopeResponse;
  use Moose;
  has ServiceMetadata => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::ServiceMetadata]', traits => ['NameInRequest'], request_name => 'serviceMetadata');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::GetServicesInScopeResponse

=head1 ATTRIBUTES


=head2 ServiceMetadata => ArrayRef[L<Paws::AuditManager::ServiceMetadata>]

The metadata associated with the aAWS service.


=head2 _request_id => Str


=cut

