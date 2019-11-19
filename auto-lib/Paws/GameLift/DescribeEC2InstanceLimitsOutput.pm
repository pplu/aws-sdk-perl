# Generated from json/callresult_class.tt

package Paws::GameLift::DescribeEC2InstanceLimitsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GameLift::Types qw/GameLift_EC2InstanceLimit/;
  has EC2InstanceLimits => (is => 'ro', isa => ArrayRef[GameLift_EC2InstanceLimit]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EC2InstanceLimits' => {
                                        'class' => 'Paws::GameLift::EC2InstanceLimit',
                                        'type' => 'ArrayRef[GameLift_EC2InstanceLimit]'
                                      }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeEC2InstanceLimitsOutput

=head1 ATTRIBUTES


=head2 EC2InstanceLimits => ArrayRef[GameLift_EC2InstanceLimit]

Object that contains the maximum number of instances for the specified
instance type.


=head2 _request_id => Str


=cut

1;