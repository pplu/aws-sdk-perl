
package Paws::EC2::CreateTrafficMirrorFilterResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_TrafficMirrorFilter/;
  has ClientToken => (is => 'ro', isa => Str);
  has TrafficMirrorFilter => (is => 'ro', isa => EC2_TrafficMirrorFilter);

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
               'TrafficMirrorFilter' => {
                                          'class' => 'Paws::EC2::TrafficMirrorFilter',
                                          'type' => 'EC2_TrafficMirrorFilter'
                                        }
             },
  'NameInRequest' => {
                       'ClientToken' => 'clientToken',
                       'TrafficMirrorFilter' => 'trafficMirrorFilter'
                     }
}
;
    return $Params_map;
  }

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


=head2 TrafficMirrorFilter => EC2_TrafficMirrorFilter

Information about the Traffic Mirror filter.


=head2 _request_id => Str


=cut

