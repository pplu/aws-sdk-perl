
package Paws::EC2::DescribeClassicLinkInstancesResult;
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ClassicLinkInstance]', request_name => 'instancesSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeClassicLinkInstancesResult

=head1 ATTRIBUTES


=head2 Instances => ArrayRef[L<Paws::EC2::ClassicLinkInstance>]

Information about one or more linked EC2-Classic instances.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

