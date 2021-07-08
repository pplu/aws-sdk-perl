
package Paws::MediaPackageVod::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::MediaPackageVod::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::MediaPackageVod::__mapOf__string>

A collection of tags associated with a resource


=head2 _request_id => Str


=cut

