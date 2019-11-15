
package Paws::EKS::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::EKS::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::EKS::TagMap>

The tags for the resource.


=head2 _request_id => Str


=cut

