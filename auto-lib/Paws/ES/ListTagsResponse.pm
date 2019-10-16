
package Paws::ES::ListTagsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ES::Types qw/ES_Tag/;
  has TagList => (is => 'ro', isa => ArrayRef[ES_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TagList' => {
                              'class' => 'Paws::ES::Tag',
                              'type' => 'ArrayRef[ES_Tag]'
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

Paws::ES::ListTagsResponse

=head1 ATTRIBUTES


=head2 TagList => ArrayRef[ES_Tag]

List of C<Tag> for the requested Elasticsearch domain.


=head2 _request_id => Str


=cut

