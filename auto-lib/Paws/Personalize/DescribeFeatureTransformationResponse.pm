
package Paws::Personalize::DescribeFeatureTransformationResponse;
  use Moose;
  has FeatureTransformation => (is => 'ro', isa => 'Paws::Personalize::FeatureTransformation', traits => ['NameInRequest'], request_name => 'featureTransformation' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeFeatureTransformationResponse

=head1 ATTRIBUTES


=head2 FeatureTransformation => L<Paws::Personalize::FeatureTransformation>

A listing of the FeatureTransformation properties.


=head2 _request_id => Str


=cut

1;