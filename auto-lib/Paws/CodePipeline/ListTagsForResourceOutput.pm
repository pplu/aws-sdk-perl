# Generated from json/callresult_class.tt

package Paws::CodePipeline::ListTagsForResourceOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodePipeline::Types qw/CodePipeline_Tag/;
  has NextToken => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[CodePipeline_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::CodePipeline::Tag',
                           'type' => 'ArrayRef[CodePipeline_Tag]'
                         }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Tags' => 'tags'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the amount of returned information is significantly large, an
identifier is also returned and can be used in a subsequent API call to
return the next page of the list. However, the ListTagsforResource call
lists all available tags in one call and does not use pagination.


=head2 Tags => ArrayRef[CodePipeline_Tag]

The tags for the resource.


=head2 _request_id => Str


=cut

1;