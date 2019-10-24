
package Paws::WorkDocs::CreateCommentResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkDocs::Types qw/WorkDocs_Comment/;
  has Comment => (is => 'ro', isa => WorkDocs_Comment);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Comment' => {
                              'class' => 'Paws::WorkDocs::Comment',
                              'type' => 'WorkDocs_Comment'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::CreateCommentResponse

=head1 ATTRIBUTES


=head2 Comment => WorkDocs_Comment

The comment that has been created.


=head2 _request_id => Str


=cut

