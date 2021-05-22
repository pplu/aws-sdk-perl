
package Paws::GreengrassV2::ResolveComponentCandidatesResponse;
  use Moose;
  has ResolvedComponentVersions => (is => 'ro', isa => 'ArrayRef[Paws::GreengrassV2::ResolvedComponentVersion]', traits => ['NameInRequest'], request_name => 'resolvedComponentVersions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::ResolveComponentCandidatesResponse

=head1 ATTRIBUTES


=head2 ResolvedComponentVersions => ArrayRef[L<Paws::GreengrassV2::ResolvedComponentVersion>]

A list of components that meet the requirements that you specify in the
request. This list includes each component's recipe that you can use to
install the component.


=head2 _request_id => Str


=cut

