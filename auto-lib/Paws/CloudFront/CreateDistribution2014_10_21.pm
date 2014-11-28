
package Paws::CloudFront::CreateDistribution2014_10_21 {
  use Moose;
  has DistributionConfig => (is => 'ro', isa => 'Paws::CloudFront::DistributionConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDistribution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateDistributionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDistributionResult');
}
1;