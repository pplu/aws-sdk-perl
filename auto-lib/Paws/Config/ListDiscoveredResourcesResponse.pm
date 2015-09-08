
package Paws::Config::ListDiscoveredResourcesResponse;
  use Moose;
  has nextToken => (is => 'ro', isa => 'Str');
  has resourceIdentifiers => (is => 'ro', isa => 'ArrayRef[Paws::Config::ResourceIdentifier]');


### main pod documentation begin ###

=head1 NAME

Paws::Config::ListDiscoveredResourcesResponse

=head1 ATTRIBUTES

=head2 nextToken => Str

  

The string that you use in a subsequent request to get the next page of
results in a paginated response.









=head2 resourceIdentifiers => ArrayRef[Paws::Config::ResourceIdentifier]

  

The details that identify a resource that is discovered by AWS Config,
including the resource type, ID, and (if available) the custom resource
name.











=cut

1;