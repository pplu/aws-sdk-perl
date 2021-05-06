
package Paws::Config::PutOrganizationConformancePackResponse;
  use Moose;
  has OrganizationConformancePackArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutOrganizationConformancePackResponse

=head1 ATTRIBUTES


=head2 OrganizationConformancePackArn => Str

ARN of the organization conformance pack.


=head2 _request_id => Str


=cut

1;