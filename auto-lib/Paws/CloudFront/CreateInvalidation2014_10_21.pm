
package Paws::CloudFront::CreateInvalidation2014_10_21 {
  use Moose;
  has DistributionId => (is => 'ro', isa => 'Str', required => 1);
  has InvalidationBatch => (is => 'ro', isa => 'Paws::CloudFront::InvalidationBatch', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInvalidation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateInvalidationResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateInvalidationResult');
}
1;