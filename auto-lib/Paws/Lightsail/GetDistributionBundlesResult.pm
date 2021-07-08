
package Paws::Lightsail::GetDistributionBundlesResult;
  use Moose;
  has Bundles => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::DistributionBundle]', traits => ['NameInRequest'], request_name => 'bundles' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetDistributionBundlesResult

=head1 ATTRIBUTES


=head2 Bundles => ArrayRef[L<Paws::Lightsail::DistributionBundle>]

An object that describes a distribution bundle.


=head2 _request_id => Str


=cut

1;