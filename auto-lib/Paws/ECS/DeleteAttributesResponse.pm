# Generated from json/callresult_class.tt

package Paws::ECS::DeleteAttributesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECS::Types qw/ECS_Attribute/;
  has Attributes => (is => 'ro', isa => ArrayRef[ECS_Attribute]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Attributes' => 'attributes'
                     },
  'types' => {
               'Attributes' => {
                                 'class' => 'Paws::ECS::Attribute',
                                 'type' => 'ArrayRef[ECS_Attribute]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::DeleteAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[ECS_Attribute]

A list of attribute objects that were successfully deleted from your
resource.


=head2 _request_id => Str


=cut

1;