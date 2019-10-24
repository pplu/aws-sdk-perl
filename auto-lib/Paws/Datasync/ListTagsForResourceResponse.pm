# Generated from json/callresult_class.tt

package Paws::Datasync::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Datasync::Types qw/Datasync_TagListEntry/;
  has NextToken => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[Datasync_TagListEntry]);

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
                           'class' => 'Paws::Datasync::TagListEntry',
                           'type' => 'ArrayRef[Datasync_TagListEntry]'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Datasync::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

An opaque string that indicates the position at which to begin
returning the next list of resource tags.


=head2 Tags => ArrayRef[Datasync_TagListEntry]

Array of resource tags.


=head2 _request_id => Str


=cut

1;