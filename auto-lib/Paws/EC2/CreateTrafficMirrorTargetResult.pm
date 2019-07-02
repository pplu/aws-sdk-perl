
package Paws::EC2::CreateTrafficMirrorTargetResult;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', request_name => 'clientToken', traits => ['NameInRequest',]);
  has TrafficMirrorTarget => (is => 'ro', isa => 'Paws::EC2::TrafficMirrorTarget', request_name => 'trafficMirrorTarget', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateTrafficMirrorTargetResult

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to Ensure
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).


=head2 TrafficMirrorTarget => L<Paws::EC2::TrafficMirrorTarget>

Information about the Traffic Mirror target.


=head2 _request_id => Str


=cut

