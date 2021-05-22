
package Paws::EC2::DescribeInstanceTypesResult;
  use Moose;
  has InstanceTypes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceTypeInfo]', request_name => 'instanceTypeSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeInstanceTypesResult

=head1 ATTRIBUTES


=head2 InstanceTypes => ArrayRef[L<Paws::EC2::InstanceTypeInfo>]

The instance type. For more information, see Instance types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html)
in the I<Amazon EC2 User Guide>.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

