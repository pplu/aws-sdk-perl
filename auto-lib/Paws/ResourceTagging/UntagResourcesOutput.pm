# Generated from json/callresult_class.tt

package Paws::ResourceTagging::UntagResourcesOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ResourceTagging::Types qw/ResourceTagging_FailedResourcesMap/;
  has FailedResourcesMap => (is => 'ro', isa => ResourceTagging_FailedResourcesMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FailedResourcesMap' => {
                                         'class' => 'Paws::ResourceTagging::FailedResourcesMap',
                                         'type' => 'ResourceTagging_FailedResourcesMap'
                                       }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ResourceTagging::UntagResourcesOutput

=head1 ATTRIBUTES


=head2 FailedResourcesMap => ResourceTagging_FailedResourcesMap

Details of resources that could not be untagged. An error code, status
code, and error message are returned for each failed item.


=head2 _request_id => Str


=cut

1;