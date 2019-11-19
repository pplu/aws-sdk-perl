# Generated from callresult_class.tt

package Paws::ELBv2::DescribeAccountLimitsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ELBv2::Types qw/ELBv2_Limit/;
  has Limits => (is => 'ro', isa => ArrayRef[ELBv2_Limit]);
  has NextMarker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               'Limits' => {
                             'type' => 'ArrayRef[ELBv2_Limit]',
                             'class' => 'Paws::ELBv2::Limit'
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

Paws::ELBv2::DescribeAccountLimitsOutput

=head1 ATTRIBUTES


=head2 Limits => ArrayRef[ELBv2_Limit]

Information about the limits.


=head2 NextMarker => Str

If there are additional results, this is the marker for the next set of
results. Otherwise, this is null.


=head2 _request_id => Str


=cut

