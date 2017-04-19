
package Paws::RDS::DescribeDBLogFilesResponse;
  use Moose;
  has DescribeDBLogFiles => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DescribeDBLogFilesDetails]', request_name => 'DescribeDBLogFilesDetails', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeDBLogFilesResponse

=head1 ATTRIBUTES


=head2 DescribeDBLogFiles => ArrayRef[L<Paws::RDS::DescribeDBLogFilesDetails>]

The DB log files returned.


=head2 Marker => Str

A pagination token that can be used in a subsequent DescribeDBLogFiles
request.


=head2 _request_id => Str


=cut

