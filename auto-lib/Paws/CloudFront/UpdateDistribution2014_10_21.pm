
package Paws::CloudFront::UpdateDistribution2014_10_21 {
  use Moose;
  has DistributionConfig => (is => 'ro', isa => 'Paws::CloudFront::DistributionConfig', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IfMatch => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDistribution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::UpdateDistributionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateDistributionResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateDistributionResult

=head1 ATTRIBUTES

=head2 B<REQUIRED> DistributionConfig => Paws::CloudFront::DistributionConfig

  

The distribution's configuration information.









=head2 B<REQUIRED> Id => Str

  

The distribution's id.









=head2 IfMatch => Str

  

The value of the ETag header you received when retrieving the
distribution's configuration. For example: E2QWRUHAPOMQZL.











=cut

