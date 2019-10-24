
package Paws::EC2::StartInstancesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_InstanceStateChange/;
  has StartingInstances => (is => 'ro', isa => ArrayRef[EC2_InstanceStateChange]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StartingInstances' => {
                                        'class' => 'Paws::EC2::InstanceStateChange',
                                        'type' => 'ArrayRef[EC2_InstanceStateChange]'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'StartingInstances' => 'instancesSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::StartInstancesResult

=head1 ATTRIBUTES


=head2 StartingInstances => ArrayRef[EC2_InstanceStateChange]

Information about the started instances.


=head2 _request_id => Str


=cut

