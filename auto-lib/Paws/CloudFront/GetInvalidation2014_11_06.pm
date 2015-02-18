
package Paws::CloudFront::GetInvalidation2014_11_06 {
  use Moose;
  has DistributionId => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInvalidation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2014-11-06/distribution/{DistributionId}/invalidation/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::GetInvalidationResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetInvalidationResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetInvalidationResult

=head1 ATTRIBUTES

=head2 B<REQUIRED> DistributionId => Str

  

The distribution's id.









=head2 B<REQUIRED> Id => Str

  

The invalidation's id.











=cut

