# Generated from json/callresult_class.tt

package Paws::OpsWorks::DescribeLoadBasedAutoScalingResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::OpsWorks::Types qw/OpsWorks_LoadBasedAutoScalingConfiguration/;
  has LoadBasedAutoScalingConfigurations => (is => 'ro', isa => ArrayRef[OpsWorks_LoadBasedAutoScalingConfiguration]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LoadBasedAutoScalingConfigurations' => {
                                                         'class' => 'Paws::OpsWorks::LoadBasedAutoScalingConfiguration',
                                                         'type' => 'ArrayRef[OpsWorks_LoadBasedAutoScalingConfiguration]'
                                                       }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeLoadBasedAutoScalingResult

=head1 ATTRIBUTES


=head2 LoadBasedAutoScalingConfigurations => ArrayRef[OpsWorks_LoadBasedAutoScalingConfiguration]

An array of C<LoadBasedAutoScalingConfiguration> objects that describe
each layer's configuration.


=head2 _request_id => Str


=cut

1;