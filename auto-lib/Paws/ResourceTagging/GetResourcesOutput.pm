# Generated from json/callresult_class.tt

package Paws::ResourceTagging::GetResourcesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ResourceTagging::Types qw/ResourceTagging_ResourceTagMapping/;
  has PaginationToken => (is => 'ro', isa => Str);
  has ResourceTagMappingList => (is => 'ro', isa => ArrayRef[ResourceTagging_ResourceTagMapping]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PaginationToken' => {
                                      'type' => 'Str'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ResourceTagMappingList' => {
                                             'class' => 'Paws::ResourceTagging::ResourceTagMapping',
                                             'type' => 'ArrayRef[ResourceTagging_ResourceTagMapping]'
                                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ResourceTagging::GetResourcesOutput

=head1 ATTRIBUTES


=head2 PaginationToken => Str

A string that indicates that the response contains more data than can
be returned in a single response. To receive additional data, specify
this string for the C<PaginationToken> value in a subsequent request.


=head2 ResourceTagMappingList => ArrayRef[ResourceTagging_ResourceTagMapping]

A list of resource ARNs and the tags (keys and values) associated with
each.


=head2 _request_id => Str


=cut

1;