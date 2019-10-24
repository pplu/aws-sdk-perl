# Generated from json/callresult_class.tt

package Paws::Discovery::DescribeTagsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Discovery::Types qw/Discovery_ConfigurationTag/;
  has NextToken => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[Discovery_ConfigurationTag]);

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
                           'class' => 'Paws::Discovery::ConfigurationTag',
                           'type' => 'ArrayRef[Discovery_ConfigurationTag]'
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

Paws::Discovery::DescribeTagsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The call returns a token. Use this token to get the next set of
results.


=head2 Tags => ArrayRef[Discovery_ConfigurationTag]

Depending on the input, this is a list of configuration items tagged
with a specific tag, or a list of tags for a specific configuration
item.


=head2 _request_id => Str


=cut

1;