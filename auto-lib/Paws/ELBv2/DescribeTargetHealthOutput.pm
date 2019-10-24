# Generated from callresult_class.tt

package Paws::ELBv2::DescribeTargetHealthOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ELBv2::Types qw/ELBv2_TargetHealthDescription/;
  has TargetHealthDescriptions => (is => 'ro', isa => ArrayRef[ELBv2_TargetHealthDescription]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TargetHealthDescriptions' => {
                                               'class' => 'Paws::ELBv2::TargetHealthDescription',
                                               'type' => 'ArrayRef[ELBv2_TargetHealthDescription]'
                                             }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeTargetHealthOutput

=head1 ATTRIBUTES


=head2 TargetHealthDescriptions => ArrayRef[ELBv2_TargetHealthDescription]

Information about the health of the targets.


=head2 _request_id => Str


=cut

