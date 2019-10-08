
package Paws::EC2::UnmonitorInstancesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_InstanceMonitoring/;
  has InstanceMonitorings => (is => 'ro', isa => ArrayRef[EC2_InstanceMonitoring]);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InstanceMonitorings' => {
                                          'class' => 'Paws::EC2::InstanceMonitoring',
                                          'type' => 'ArrayRef[EC2_InstanceMonitoring]'
                                        }
             },
  'NameInRequest' => {
                       'InstanceMonitorings' => 'instancesSet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::UnmonitorInstancesResult

=head1 ATTRIBUTES


=head2 InstanceMonitorings => ArrayRef[EC2_InstanceMonitoring]

The monitoring information.


=head2 _request_id => Str


=cut

