
package Paws::CloudFront::ListDistributionsByOriginRequestPolicyIdResult;
  use Moose;
  has DistributionIdList => (is => 'ro', isa => 'Paws::CloudFront::DistributionIdList', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListDistributionsByOriginRequestPolicyIdResult

=head1 ATTRIBUTES


=head2 DistributionIdList => L<Paws::CloudFront::DistributionIdList>

A list of distribution IDs.




=cut

