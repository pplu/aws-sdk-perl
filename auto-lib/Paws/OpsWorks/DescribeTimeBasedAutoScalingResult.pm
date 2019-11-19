# Generated from json/callresult_class.tt

package Paws::OpsWorks::DescribeTimeBasedAutoScalingResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::OpsWorks::Types qw/OpsWorks_TimeBasedAutoScalingConfiguration/;
  has TimeBasedAutoScalingConfigurations => (is => 'ro', isa => ArrayRef[OpsWorks_TimeBasedAutoScalingConfiguration]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TimeBasedAutoScalingConfigurations' => {
                                                         'class' => 'Paws::OpsWorks::TimeBasedAutoScalingConfiguration',
                                                         'type' => 'ArrayRef[OpsWorks_TimeBasedAutoScalingConfiguration]'
                                                       }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeTimeBasedAutoScalingResult

=head1 ATTRIBUTES


=head2 TimeBasedAutoScalingConfigurations => ArrayRef[OpsWorks_TimeBasedAutoScalingConfiguration]

An array of C<TimeBasedAutoScalingConfiguration> objects that describe
the configuration for the specified instances.


=head2 _request_id => Str


=cut

1;