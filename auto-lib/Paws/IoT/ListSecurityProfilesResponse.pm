
package Paws::IoT::ListSecurityProfilesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SecurityProfileIdentifiers => (is => 'ro', isa => 'ArrayRef[Paws::IoT::SecurityProfileIdentifier]', traits => ['NameInRequest'], request_name => 'securityProfileIdentifiers');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListSecurityProfilesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that can be used to retrieve the next set of results, or
C<null> if there are no additional results.


=head2 SecurityProfileIdentifiers => ArrayRef[L<Paws::IoT::SecurityProfileIdentifier>]

A list of security profile identifiers (names and ARNs).


=head2 _request_id => Str


=cut

