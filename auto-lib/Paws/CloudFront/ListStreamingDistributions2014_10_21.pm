
package Paws::CloudFront::ListStreamingDistributions2014_10_21 {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStreamingDistributions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::ListStreamingDistributionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListStreamingDistributionsResult');
}
1;