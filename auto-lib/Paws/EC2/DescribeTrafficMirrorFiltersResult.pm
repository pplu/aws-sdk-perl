
package Paws::EC2::DescribeTrafficMirrorFiltersResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_TrafficMirrorFilter/;
  has NextToken => (is => 'ro', isa => Str);
  has TrafficMirrorFilters => (is => 'ro', isa => ArrayRef[EC2_TrafficMirrorFilter]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'TrafficMirrorFilters' => 'trafficMirrorFilterSet',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TrafficMirrorFilters' => {
                                           'class' => 'Paws::EC2::TrafficMirrorFilter',
                                           'type' => 'ArrayRef[EC2_TrafficMirrorFilter]'
                                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeTrafficMirrorFiltersResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. The value is
C<null> when there are no more results to return.


=head2 TrafficMirrorFilters => ArrayRef[EC2_TrafficMirrorFilter]

Information about one or more Traffic Mirror filters.


=head2 _request_id => Str


=cut

