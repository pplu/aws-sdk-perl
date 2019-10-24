# Generated from json/callresult_class.tt

package Paws::FSX::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::FSX::Types qw/FSX_Tag/;
  has NextToken => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[FSX_Tag]);

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
                           'class' => 'Paws::FSX::Tag',
                           'type' => 'ArrayRef[FSX_Tag]'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::FSX::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

This is present if there are more tags than returned in the response
(String). You can use the C<NextToken> value in the later request to
fetch the tags.


=head2 Tags => ArrayRef[FSX_Tag]

A list of tags on the resource.


=head2 _request_id => Str


=cut

1;