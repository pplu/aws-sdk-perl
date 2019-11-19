# Generated from callresult_class.tt

package Paws::AutoScaling::TagsType;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AutoScaling::Types qw/AutoScaling_TagDescription/;
  has NextToken => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[AutoScaling_TagDescription]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'ArrayRef[AutoScaling_TagDescription]',
                           'class' => 'Paws::AutoScaling::TagDescription'
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

Paws::AutoScaling::TagsType

=head1 ATTRIBUTES


=head2 NextToken => Str

A string that indicates that the response contains more items than can
be returned in a single response. To receive additional items, specify
this string for the C<NextToken> value when requesting the next set of
items. This value is null when there are no more items to return.


=head2 Tags => ArrayRef[AutoScaling_TagDescription]

One or more tags.


=head2 _request_id => Str


=cut

