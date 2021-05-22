
package Paws::CloudFront::ListDistributionsByRealtimeLogConfigResult;
  use Moose;
  has DistributionList => (is => 'ro', isa => 'Paws::CloudFront::DistributionList', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListDistributionsByRealtimeLogConfigResult

=head1 ATTRIBUTES


=head2 DistributionList => L<Paws::CloudFront::DistributionList>






=cut

