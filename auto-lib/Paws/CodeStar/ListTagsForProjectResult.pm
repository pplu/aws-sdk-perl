# Generated from json/callresult_class.tt

package Paws::CodeStar::ListTagsForProjectResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeStar::Types qw/CodeStar_Tags/;
  has NextToken => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => CodeStar_Tags);

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
                           'type' => 'CodeStar_Tags',
                           'class' => 'Paws::CodeStar::Tags'
                         }
             },
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::ListTagsForProjectResult

=head1 ATTRIBUTES


=head2 NextToken => Str

Reserved for future use.


=head2 Tags => CodeStar_Tags

The tags for the project.


=head2 _request_id => Str


=cut

1;