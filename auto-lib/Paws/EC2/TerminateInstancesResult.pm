
package Paws::EC2::TerminateInstancesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_InstanceStateChange/;
  has TerminatingInstances => (is => 'ro', isa => ArrayRef[EC2_InstanceStateChange]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TerminatingInstances' => {
                                           'class' => 'Paws::EC2::InstanceStateChange',
                                           'type' => 'ArrayRef[EC2_InstanceStateChange]'
                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'TerminatingInstances' => 'instancesSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TerminateInstancesResult

=head1 ATTRIBUTES


=head2 TerminatingInstances => ArrayRef[EC2_InstanceStateChange]

Information about the terminated instances.


=head2 _request_id => Str


=cut

