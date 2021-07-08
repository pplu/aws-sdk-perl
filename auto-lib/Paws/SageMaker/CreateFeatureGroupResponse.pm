
package Paws::SageMaker::CreateFeatureGroupResponse;
  use Moose;
  has FeatureGroupArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateFeatureGroupResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FeatureGroupArn => Str

The Amazon Resource Name (ARN) of the C<FeatureGroup>. This is a unique
identifier for the feature group.


=head2 _request_id => Str


=cut

1;