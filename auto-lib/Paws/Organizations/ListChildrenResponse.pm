# Generated from json/callresult_class.tt

package Paws::Organizations::ListChildrenResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Organizations::Types qw/Organizations_Child/;
  has Children => (is => 'ro', isa => ArrayRef[Organizations_Child]);
  has NextToken => (is => 'ro', isa => Str);

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
               'Children' => {
                               'class' => 'Paws::Organizations::Child',
                               'type' => 'ArrayRef[Organizations_Child]'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Organizations::ListChildrenResponse

=head1 ATTRIBUTES


=head2 Children => ArrayRef[Organizations_Child]

The list of children of the specified parent container.


=head2 NextToken => Str

If present, this value indicates that there is more output available
than is included in the current response. Use this value in the
C<NextToken> request parameter in a subsequent call to the operation to
get the next part of the output. You should repeat this until the
C<NextToken> response element comes back as C<null>.


=head2 _request_id => Str


=cut

1;