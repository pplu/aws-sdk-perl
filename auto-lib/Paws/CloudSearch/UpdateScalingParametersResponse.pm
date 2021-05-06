
package Paws::CloudSearch::UpdateScalingParametersResponse;
  use Moose;
  has ScalingParameters => (is => 'ro', isa => 'Paws::CloudSearch::ScalingParametersStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::UpdateScalingParametersResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScalingParameters => L<Paws::CloudSearch::ScalingParametersStatus>




=head2 _request_id => Str


=cut

