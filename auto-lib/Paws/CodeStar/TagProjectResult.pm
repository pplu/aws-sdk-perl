# Generated from json/callresult_class.tt

package Paws::CodeStar::TagProjectResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeStar::Types qw/CodeStar_Tags/;
  has Tags => (is => 'ro', isa => CodeStar_Tags);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::CodeStar::Tags',
                           'type' => 'CodeStar_Tags'
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

Paws::CodeStar::TagProjectResult

=head1 ATTRIBUTES


=head2 Tags => CodeStar_Tags

The tags for the project.


=head2 _request_id => Str


=cut

1;