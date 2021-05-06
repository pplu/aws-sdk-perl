
package Paws::EC2::DescribeVolumesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has Volumes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Volume]', request_name => 'volumeSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVolumesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<NextToken> value to include in a future C<DescribeVolumes>
request. When the results of a C<DescribeVolumes> request exceed
C<MaxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 Volumes => ArrayRef[L<Paws::EC2::Volume>]

Information about the volumes.


=head2 _request_id => Str


=cut

