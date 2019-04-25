
package Paws::OpsWorks::DescribeOperatingSystemsResponse;
  use Moose;
  has OperatingSystems => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::OperatingSystem]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeOperatingSystemsResponse

=head1 ATTRIBUTES


=head2 OperatingSystems => ArrayRef[L<Paws::OpsWorks::OperatingSystem>]

Contains information in response to a C<DescribeOperatingSystems>
request.


=head2 _request_id => Str


=cut

1;