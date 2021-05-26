
package Paws::Config::GetOrganizationConformancePackDetailedStatusResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has OrganizationConformancePackDetailedStatuses => (is => 'ro', isa => 'ArrayRef[Paws::Config::OrganizationConformancePackDetailedStatus]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetOrganizationConformancePackDetailedStatusResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The nextToken string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 OrganizationConformancePackDetailedStatuses => ArrayRef[L<Paws::Config::OrganizationConformancePackDetailedStatus>]

A list of C<OrganizationConformancePackDetailedStatus> objects.


=head2 _request_id => Str


=cut

1;