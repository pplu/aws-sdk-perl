# Generated from json/callresult_class.tt

package Paws::CodeCommit::ListTagsForResourceOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw/CodeCommit_TagsMap/;
  has NextToken => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => CodeCommit_TagsMap);

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
                           'class' => 'Paws::CodeCommit::TagsMap',
                           'type' => 'CodeCommit_TagsMap'
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

Paws::CodeCommit::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

An enumeration token that allows the operation to batch the next
results of the operation.


=head2 Tags => CodeCommit_TagsMap

A list of tag key and value pairs associated with the specified
resource.


=head2 _request_id => Str


=cut

1;