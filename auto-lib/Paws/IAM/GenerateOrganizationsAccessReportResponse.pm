
package Paws::IAM::GenerateOrganizationsAccessReportResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GenerateOrganizationsAccessReportResponse

=head1 ATTRIBUTES


=head2 JobId => Str

The job identifier that you can use in the GetOrganizationsAccessReport
operation.


=head2 _request_id => Str


=cut

