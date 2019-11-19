
package Paws::EKS::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::EKS::Types qw/EKS_TagMap/;
  has Tags => (is => 'ro', isa => EKS_TagMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'EKS_TagMap',
                           'class' => 'Paws::EKS::TagMap'
                         }
             },
  'NameInRequest' => {
                       'Tags' => 'tags'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => EKS_TagMap

The tags for the resource.


=head2 _request_id => Str


=cut

