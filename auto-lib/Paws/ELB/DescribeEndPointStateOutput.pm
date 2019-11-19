# Generated from callresult_class.tt

package Paws::ELB::DescribeEndPointStateOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ELB::Types qw/ELB_InstanceState/;
  has InstanceStates => (is => 'ro', isa => ArrayRef[ELB_InstanceState]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InstanceStates' => {
                                     'type' => 'ArrayRef[ELB_InstanceState]',
                                     'class' => 'Paws::ELB::InstanceState'
                                   }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DescribeEndPointStateOutput

=head1 ATTRIBUTES


=head2 InstanceStates => ArrayRef[ELB_InstanceState]

Information about the health of the instances.


=head2 _request_id => Str


=cut

