
package Paws::EC2::DescribeTrafficMirrorSessionsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_TrafficMirrorSession/;
  has NextToken => (is => 'ro', isa => Str);
  has TrafficMirrorSessions => (is => 'ro', isa => ArrayRef[EC2_TrafficMirrorSession]);

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
               'TrafficMirrorSessions' => {
                                            'class' => 'Paws::EC2::TrafficMirrorSession',
                                            'type' => 'ArrayRef[EC2_TrafficMirrorSession]'
                                          }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'TrafficMirrorSessions' => 'trafficMirrorSessionSet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeTrafficMirrorSessionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. The value is
C<null> when there are no more results to return.


=head2 TrafficMirrorSessions => ArrayRef[EC2_TrafficMirrorSession]

Describes one or more Traffic Mirror sessions. By default, all Traffic
Mirror sessions are described. Alternatively, you can filter the
results.


=head2 _request_id => Str


=cut

