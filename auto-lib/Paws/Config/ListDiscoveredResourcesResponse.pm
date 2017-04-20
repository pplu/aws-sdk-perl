
package Paws::Config::ListDiscoveredResourcesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ResourceIdentifiers => (is => 'ro', isa => 'ArrayRef[Paws::Config::ResourceIdentifier]', traits => ['NameInRequest'], request_name => 'resourceIdentifiers' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::ListDiscoveredResourcesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The string that you use in a subsequent request to get the next page of
results in a paginated response.


=head2 ResourceIdentifiers => ArrayRef[L<Paws::Config::ResourceIdentifier>]

The details that identify a resource that is discovered by AWS Config,
including the resource type, ID, and (if available) the custom resource
name.


=head2 _request_id => Str


=cut

1;