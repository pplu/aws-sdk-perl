
package Paws::CloudSearch::DescribeScalingParametersResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has ScalingParameters => (is => 'ro', isa => 'Paws::CloudSearch::ScalingParametersStatus', required => 1);

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DescribeScalingParametersResponse

=head1 ATTRIBUTES

=head2 B<REQUIRED> ScalingParameters => Paws::CloudSearch::ScalingParametersStatus

  


=cut

