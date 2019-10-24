# Generated from callresult_class.tt

package Paws::ELB::DescribeAccountLimitsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ELB::Types qw/ELB_Limit/;
  has Limits => (is => 'ro', isa => ArrayRef[ELB_Limit]);
  has NextMarker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Limits' => {
                             'class' => 'Paws::ELB::Limit',
                             'type' => 'ArrayRef[ELB_Limit]'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextMarker' => {
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

Paws::ELB::DescribeAccountLimitsOutput

=head1 ATTRIBUTES


=head2 Limits => ArrayRef[ELB_Limit]

Information about the limits.


=head2 NextMarker => Str

The marker to use when requesting the next set of results. If there are
no additional results, the string is empty.


=head2 _request_id => Str


=cut

