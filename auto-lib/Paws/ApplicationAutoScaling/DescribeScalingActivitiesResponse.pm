# Generated from json/callresult_class.tt

package Paws::ApplicationAutoScaling::DescribeScalingActivitiesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApplicationAutoScaling::Types qw/ApplicationAutoScaling_ScalingActivity/;
  has NextToken => (is => 'ro', isa => Str);
  has ScalingActivities => (is => 'ro', isa => ArrayRef[ApplicationAutoScaling_ScalingActivity]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ScalingActivities' => {
                                        'type' => 'ArrayRef[ApplicationAutoScaling_ScalingActivity]',
                                        'class' => 'Paws::ApplicationAutoScaling::ScalingActivity'
                                      },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::DescribeScalingActivitiesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token required to get the next set of results. This value is
C<null> if there are no more results to return.


=head2 ScalingActivities => ArrayRef[ApplicationAutoScaling_ScalingActivity]

A list of scaling activity objects.


=head2 _request_id => Str


=cut

1;