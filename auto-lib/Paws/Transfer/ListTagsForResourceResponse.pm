# Generated from json/callresult_class.tt

package Paws::Transfer::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Transfer::Types qw/Transfer_Tag/;
  has Arn => (is => 'ro', isa => Str);
  has NextToken => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[Transfer_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Arn' => {
                          'type' => 'Str'
                        },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::Transfer::Tag',
                           'type' => 'ArrayRef[Transfer_Tag]'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Arn => Str

This value is the ARN you specified to list the tags of.


=head2 NextToken => Str

When you can get additional results from the C<ListTagsForResource>
call, a C<NextToken> parameter is returned in the output. You can then
pass in a subsequent command to the C<NextToken> parameter to continue
listing additional tags.


=head2 Tags => ArrayRef[Transfer_Tag]

Key-value pairs that are assigned to a resource, usually for the
purpose of grouping and searching for items. Tags are metadata that you
define.


=head2 _request_id => Str


=cut

1;