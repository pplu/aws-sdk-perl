# Generated from json/callresult_class.tt

package Paws::ApplicationAutoScaling::DescribeScalableTargetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApplicationAutoScaling::Types qw/ApplicationAutoScaling_ScalableTarget/;
  has NextToken => (is => 'ro', isa => Str);
  has ScalableTargets => (is => 'ro', isa => ArrayRef[ApplicationAutoScaling_ScalableTarget]);

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
               'ScalableTargets' => {
                                      'class' => 'Paws::ApplicationAutoScaling::ScalableTarget',
                                      'type' => 'ArrayRef[ApplicationAutoScaling_ScalableTarget]'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::DescribeScalableTargetsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token required to get the next set of results. This value is
C<null> if there are no more results to return.


=head2 ScalableTargets => ArrayRef[ApplicationAutoScaling_ScalableTarget]

The scalable targets that match the request parameters.


=head2 _request_id => Str


=cut

1;