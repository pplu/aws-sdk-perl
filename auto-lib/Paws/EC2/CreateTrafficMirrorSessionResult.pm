
package Paws::EC2::CreateTrafficMirrorSessionResult;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', request_name => 'clientToken', traits => ['NameInRequest',]);
  has TrafficMirrorSession => (is => 'ro', isa => 'Paws::EC2::TrafficMirrorSession', request_name => 'trafficMirrorSession', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateTrafficMirrorSessionResult

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to Ensure
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).


=head2 TrafficMirrorSession => L<Paws::EC2::TrafficMirrorSession>

Information about the Traffic Mirror session.


=head2 _request_id => Str


=cut

