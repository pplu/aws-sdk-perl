# Generated from callresult_class.tt

package Paws::ELB::DeregisterEndPointsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ELB::Types qw/ELB_Instance/;
  has Instances => (is => 'ro', isa => ArrayRef[ELB_Instance]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Instances' => {
                                'type' => 'ArrayRef[ELB_Instance]',
                                'class' => 'Paws::ELB::Instance'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DeregisterEndPointsOutput

=head1 ATTRIBUTES


=head2 Instances => ArrayRef[ELB_Instance]

The remaining instances registered with the load balancer.


=head2 _request_id => Str


=cut

