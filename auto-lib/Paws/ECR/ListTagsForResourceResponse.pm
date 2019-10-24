# Generated from json/callresult_class.tt

package Paws::ECR::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECR::Types qw/ECR_Tag/;
  has Tags => (is => 'ro', isa => ArrayRef[ECR_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::ECR::Tag',
                           'type' => 'ArrayRef[ECR_Tag]'
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

Paws::ECR::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[ECR_Tag]

The tags for the resource.


=head2 _request_id => Str


=cut

1;