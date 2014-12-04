
package Paws::Route53::ListTagsForResource {
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListTagsForResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListTagsForResourceResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListTagsForResourceResponse

=head1 ATTRIBUTES

=head2 B<REQUIRED> ResourceId => Str

  

The ID of the resource for which you want to retrieve tags.









=head2 B<REQUIRED> ResourceType => Str

  

The type of the resource.

- The resource type for health checks is C<healthcheck>.

- The resource type for hosted zones is C<hostedzone>.











=cut

