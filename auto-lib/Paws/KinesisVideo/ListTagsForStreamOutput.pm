
package Paws::KinesisVideo::ListTagsForStreamOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisVideo::Types qw/KinesisVideo_ResourceTags/;
  has NextToken => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => KinesisVideo_ResourceTags);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::KinesisVideo::ResourceTags',
                           'type' => 'KinesisVideo_ResourceTags'
                         },
               'NextToken' => {
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

Paws::KinesisVideo::ListTagsForStreamOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If you specify this parameter and the result of a C<ListTags> call is
truncated, the response includes a token that you can use in the next
request to fetch the next set of tags.


=head2 Tags => KinesisVideo_ResourceTags

A map of tag keys and values associated with the specified stream.


=head2 _request_id => Str


=cut

