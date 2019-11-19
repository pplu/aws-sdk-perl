
package Paws::Lambda::ListTagsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lambda::Types qw/Lambda_Tags/;
  has Tags => (is => 'ro', isa => Lambda_Tags);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'Lambda_Tags',
                           'class' => 'Paws::Lambda::Tags'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::ListTagsResponse

=head1 ATTRIBUTES


=head2 Tags => Lambda_Tags

The function's tags.


=head2 _request_id => Str


=cut

