
package Paws::Backup::ListTagsOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Backup::Types qw/Backup_Tags/;
  has NextToken => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => Backup_Tags);

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
                           'class' => 'Paws::Backup::Tags',
                           'type' => 'Backup_Tags'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListTagsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The next item following a partial list of returned items. For example,
if a request is made to return C<maxResults> number of items,
C<NextToken> allows you to return more items in your list starting at
the location pointed to by the next token.


=head2 Tags => Backup_Tags

To help organize your resources, you can assign your own metadata to
the resources you create. Each tag is a key-value pair.


=head2 _request_id => Str


=cut

