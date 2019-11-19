# Generated from json/callresult_class.tt

package Paws::ECS::PutAttributesResponse;
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
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Attributes' => {
                                 'class' => 'Paws::ECS::Attribute',
                                 'type' => 'ArrayRef[ECS_Attribute]'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::PutAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[ECS_Attribute]

The attributes applied to your resource.


=head2 _request_id => Str


=cut

1;