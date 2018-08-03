
package Paws::IoT::ListTargetsForSecurityProfileResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SecurityProfileTargets => (is => 'ro', isa => 'ArrayRef[Paws::IoT::SecurityProfileTarget]', traits => ['NameInRequest'], request_name => 'securityProfileTargets');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListTargetsForSecurityProfileResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that can be used to retrieve the next set of results, or
C<null> if there are no additional results.


=head2 SecurityProfileTargets => ArrayRef[L<Paws::IoT::SecurityProfileTarget>]

The thing groups to which the security profile is attached.


=head2 _request_id => Str


=cut

