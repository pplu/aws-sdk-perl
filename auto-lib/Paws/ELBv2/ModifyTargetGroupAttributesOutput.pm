# Generated from callresult_class.tt

package Paws::ELBv2::ModifyTargetGroupAttributesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ELBv2::Types qw/ELBv2_TargetGroupAttribute/;
  has Attributes => (is => 'ro', isa => ArrayRef[ELBv2_TargetGroupAttribute]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Attributes' => {
                                 'class' => 'Paws::ELBv2::TargetGroupAttribute',
                                 'type' => 'ArrayRef[ELBv2_TargetGroupAttribute]'
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

Paws::ELBv2::ModifyTargetGroupAttributesOutput

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[ELBv2_TargetGroupAttribute]

Information about the attributes.


=head2 _request_id => Str


=cut

