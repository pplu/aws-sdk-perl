
package Paws::WorkDocs::DescribeCommentsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkDocs::Types qw/WorkDocs_Comment/;
  has Comments => (is => 'ro', isa => ArrayRef[WorkDocs_Comment]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Comments' => {
                               'class' => 'Paws::WorkDocs::Comment',
                               'type' => 'ArrayRef[WorkDocs_Comment]'
                             },
               'Marker' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DescribeCommentsResponse

=head1 ATTRIBUTES


=head2 Comments => ArrayRef[WorkDocs_Comment]

The list of comments for the specified document version.


=head2 Marker => Str

The marker for the next set of results. This marker was received from a
previous call.


=head2 _request_id => Str


=cut

