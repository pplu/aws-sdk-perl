
package Paws::CloudFront::CreateDistribution2014_11_06 {
  use Moose;
  has DistributionConfig => (is => 'ro', isa => 'Paws::CloudFront::DistributionConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDistribution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2014-11-06/distribution');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateDistributionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDistributionResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateDistributionResult

=head1 ATTRIBUTES

=head2 B<REQUIRED> DistributionConfig => Paws::CloudFront::DistributionConfig

  

The distribution's configuration information.











=cut

