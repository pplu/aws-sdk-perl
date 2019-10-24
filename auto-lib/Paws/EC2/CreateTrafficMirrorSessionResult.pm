
package Paws::EC2::CreateTrafficMirrorSessionResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_TrafficMirrorSession/;
  has ClientToken => (is => 'ro', isa => Str);
  has TrafficMirrorSession => (is => 'ro', isa => EC2_TrafficMirrorSession);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TrafficMirrorSession' => {
                                           'class' => 'Paws::EC2::TrafficMirrorSession',
                                           'type' => 'EC2_TrafficMirrorSession'
                                         }
             },
  'NameInRequest' => {
                       'ClientToken' => 'clientToken',
                       'TrafficMirrorSession' => 'trafficMirrorSession'
                     }
}
;
    return $Params_map;
  }

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


=head2 TrafficMirrorSession => EC2_TrafficMirrorSession

Information about the Traffic Mirror session.


=head2 _request_id => Str


=cut

