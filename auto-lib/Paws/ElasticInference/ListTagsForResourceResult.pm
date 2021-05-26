
package Paws::ElasticInference::ListTagsForResourceResult;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::ElasticInference::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticInference::ListTagsForResourceResult

=head1 ATTRIBUTES


=head2 Tags => L<Paws::ElasticInference::TagMap>

The tags of the Elastic Inference Accelerator.


=head2 _request_id => Str


=cut

