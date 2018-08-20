
package Paws::IoT::ListSecurityProfilesForTargetResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SecurityProfileTargetMappings => (is => 'ro', isa => 'ArrayRef[Paws::IoT::SecurityProfileTargetMapping]', traits => ['NameInRequest'], request_name => 'securityProfileTargetMappings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListSecurityProfilesForTargetResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that can be used to retrieve the next set of results, or
C<null> if there are no additional results.


=head2 SecurityProfileTargetMappings => ArrayRef[L<Paws::IoT::SecurityProfileTargetMapping>]

A list of security profiles and their associated targets.


=head2 _request_id => Str


=cut

