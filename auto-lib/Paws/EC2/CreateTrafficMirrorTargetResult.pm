
package Paws::EC2::CreateTrafficMirrorTargetResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_TrafficMirrorTarget/;
  has ClientToken => (is => 'ro', isa => Str);
  has TrafficMirrorTarget => (is => 'ro', isa => EC2_TrafficMirrorTarget);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ClientToken' => 'clientToken',
                       'TrafficMirrorTarget' => 'trafficMirrorTarget'
                     },
  'types' => {
               'TrafficMirrorTarget' => {
                                          'class' => 'Paws::EC2::TrafficMirrorTarget',
                                          'type' => 'EC2_TrafficMirrorTarget'
                                        },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

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


=head2 TrafficMirrorTarget => EC2_TrafficMirrorTarget

Information about the Traffic Mirror target.


=head2 _request_id => Str


=cut

