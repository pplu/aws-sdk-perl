
package Paws::EC2::CreateTrafficMirrorFilterResult;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', request_name => 'clientToken', traits => ['NameInRequest',]);
  has TrafficMirrorFilter => (is => 'ro', isa => 'Paws::EC2::TrafficMirrorFilter', request_name => 'trafficMirrorFilter', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateTrafficMirrorFilterResult

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to Ensure
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).


=head2 TrafficMirrorFilter => L<Paws::EC2::TrafficMirrorFilter>

Information about the Traffic Mirror filter.


=head2 _request_id => Str


=cut

