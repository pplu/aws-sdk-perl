
package Paws::QLDB::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::QLDB::Types qw/QLDB_Tags/;
  has Tags => (is => 'ro', isa => QLDB_Tags);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'QLDB_Tags',
                           'class' => 'Paws::QLDB::Tags'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => QLDB_Tags

The tags that are currently associated with the specified Amazon QLDB
resource.


=head2 _request_id => Str


=cut

