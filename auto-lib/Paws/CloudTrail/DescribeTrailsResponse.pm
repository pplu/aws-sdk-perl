
package Paws::CloudTrail::DescribeTrailsResponse;
  use Moose;
  has TrailList => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::Trail]', traits => ['NameInRequest'], request_name => 'trailList' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::DescribeTrailsResponse

=head1 ATTRIBUTES


=head2 TrailList => ArrayRef[L<Paws::CloudTrail::Trail>]

The list of trail objects. Trail objects with string values are only
returned if values for the objects exist in a trail's configuration.
For example, C<SNSTopicName> and C<SNSTopicARN> are only returned in
results if a trail is configured to send SNS notifications. Similarly,
C<KMSKeyId> only appears in results if a trail's log files are
encrypted with AWS KMS-managed keys.


=head2 _request_id => Str


=cut

1;