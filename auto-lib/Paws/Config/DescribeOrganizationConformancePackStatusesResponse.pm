
package Paws::Config::DescribeOrganizationConformancePackStatusesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has OrganizationConformancePackStatuses => (is => 'ro', isa => 'ArrayRef[Paws::Config::OrganizationConformancePackStatus]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeOrganizationConformancePackStatusesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The nextToken string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 OrganizationConformancePackStatuses => ArrayRef[L<Paws::Config::OrganizationConformancePackStatus>]

A list of C<OrganizationConformancePackStatus> objects.


=head2 _request_id => Str


=cut

1;