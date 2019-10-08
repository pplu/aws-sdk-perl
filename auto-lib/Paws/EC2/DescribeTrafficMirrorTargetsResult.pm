
package Paws::EC2::DescribeTrafficMirrorTargetsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_TrafficMirrorTarget/;
  has NextToken => (is => 'ro', isa => Str);
  has TrafficMirrorTargets => (is => 'ro', isa => ArrayRef[EC2_TrafficMirrorTarget]);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TrafficMirrorTargets' => {
                                           'class' => 'Paws::EC2::TrafficMirrorTarget',
                                           'type' => 'ArrayRef[EC2_TrafficMirrorTarget]'
                                         }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'TrafficMirrorTargets' => 'trafficMirrorTargetSet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeTrafficMirrorTargetsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. The value is
C<null> when there are no more results to return.


=head2 TrafficMirrorTargets => ArrayRef[EC2_TrafficMirrorTarget]

Information about one or more Traffic Mirror targets.


=head2 _request_id => Str


=cut

