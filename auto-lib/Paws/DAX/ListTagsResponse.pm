# Generated from json/callresult_class.tt

package Paws::DAX::ListTagsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DAX::Types qw/DAX_Tag/;
  has NextToken => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[DAX_Tag]);

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
                           'class' => 'Paws::DAX::Tag',
                           'type' => 'ArrayRef[DAX_Tag]'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DAX::ListTagsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If this value is present, there are additional results to be displayed.
To retrieve them, call C<ListTags> again, with C<NextToken> set to this
value.


=head2 Tags => ArrayRef[DAX_Tag]

A list of tags currently associated with the DAX cluster.


=head2 _request_id => Str


=cut

1;