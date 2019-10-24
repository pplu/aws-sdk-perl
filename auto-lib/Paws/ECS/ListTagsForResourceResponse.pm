# Generated from json/callresult_class.tt

package Paws::ECS::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECS::Types qw/ECS_Tag/;
  has Tags => (is => 'ro', isa => ArrayRef[ECS_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::ECS::Tag',
                           'type' => 'ArrayRef[ECS_Tag]'
                         }
             },
  'NameInRequest' => {
                       'Tags' => 'tags'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[ECS_Tag]

The tags for the resource.


=head2 _request_id => Str


=cut

1;