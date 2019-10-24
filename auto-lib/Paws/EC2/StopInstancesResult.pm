
package Paws::EC2::StopInstancesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_InstanceStateChange/;
  has StoppingInstances => (is => 'ro', isa => ArrayRef[EC2_InstanceStateChange]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StoppingInstances' => {
                                        'class' => 'Paws::EC2::InstanceStateChange',
                                        'type' => 'ArrayRef[EC2_InstanceStateChange]'
                                      }
             },
  'NameInRequest' => {
                       'StoppingInstances' => 'instancesSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::StopInstancesResult

=head1 ATTRIBUTES


=head2 StoppingInstances => ArrayRef[EC2_InstanceStateChange]

Information about the stopped instances.


=head2 _request_id => Str


=cut

