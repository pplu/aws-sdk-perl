
package Paws::Config::DescribeOrganizationConformancePacksResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has OrganizationConformancePacks => (is => 'ro', isa => 'ArrayRef[Paws::Config::OrganizationConformancePack]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeOrganizationConformancePacksResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The nextToken string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 OrganizationConformancePacks => ArrayRef[L<Paws::Config::OrganizationConformancePack>]

Returns a list of OrganizationConformancePacks objects.


=head2 _request_id => Str


=cut

1;