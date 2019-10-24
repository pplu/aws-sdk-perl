# Generated from json/callresult_class.tt

package Paws::Organizations::ListRootsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Organizations::Types qw/Organizations_Root/;
  has NextToken => (is => 'ro', isa => Str);
  has Roots => (is => 'ro', isa => ArrayRef[Organizations_Root]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Roots' => {
                            'class' => 'Paws::Organizations::Root',
                            'type' => 'ArrayRef[Organizations_Root]'
                          },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Organizations::ListRootsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If present, this value indicates that there is more output available
than is included in the current response. Use this value in the
C<NextToken> request parameter in a subsequent call to the operation to
get the next part of the output. You should repeat this until the
C<NextToken> response element comes back as C<null>.


=head2 Roots => ArrayRef[Organizations_Root]

A list of roots that are defined in an organization.


=head2 _request_id => Str


=cut

1;