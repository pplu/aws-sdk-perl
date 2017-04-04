
package Paws::CloudTrail::DescribeTrailsResponse;
  use Moose;
  has TrailList => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::Trail]', traits => ['NameInRequest'], request_name => 'trailList' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::DescribeTrailsResponse

=head1 ATTRIBUTES


=head2 TrailList => ArrayRef[L<Paws::CloudTrail::Trail>]

The list of trail objects.


=head2 _request_id => Str


=cut

1;