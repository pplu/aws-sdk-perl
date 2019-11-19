
package Paws::IoT::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_Tag/;
  has NextToken => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[IoT_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Tags' => {
                           'type' => 'ArrayRef[IoT_Tag]',
                           'class' => 'Paws::IoT::Tag'
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

Paws::IoT::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token used to get the next set of results, or B<null> if there are
no additional results.


=head2 Tags => ArrayRef[IoT_Tag]

The list of tags assigned to the resource.


=head2 _request_id => Str


=cut

