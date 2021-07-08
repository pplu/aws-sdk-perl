
package Paws::ApplicationMigration::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::ApplicationMigration::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::ApplicationMigration::TagsMap>

List tags for resource response.


=head2 _request_id => Str


=cut

