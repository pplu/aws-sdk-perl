# Generated from json/callresult_class.tt

package Paws::Organizations::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Organizations::Types qw/Organizations_Tag/;
  has NextToken => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[Organizations_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::Organizations::Tag',
                           'type' => 'ArrayRef[Organizations_Tag]'
                         },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Organizations::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If present, this value indicates that there is more output available
than is included in the current response. Use this value in the
C<NextToken> request parameter in a subsequent call to the operation to
get the next part of the output. You should repeat this until the
C<NextToken> response element comes back as C<null>.


=head2 Tags => ArrayRef[Organizations_Tag]

The tags that are assigned to the resource.


=head2 _request_id => Str


=cut

1;