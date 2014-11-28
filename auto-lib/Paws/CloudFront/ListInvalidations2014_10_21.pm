
package Paws::CloudFront::ListInvalidations2014_10_21 {
  use Moose;
  has DistributionId => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInvalidations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::ListInvalidationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListInvalidationsResult');
}
1;