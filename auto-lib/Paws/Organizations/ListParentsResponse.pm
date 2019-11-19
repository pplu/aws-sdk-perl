# Generated from json/callresult_class.tt

package Paws::Organizations::ListParentsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Organizations::Types qw/Organizations_Parent/;
  has NextToken => (is => 'ro', isa => Str);
  has Parents => (is => 'ro', isa => ArrayRef[Organizations_Parent]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Parents' => {
                              'class' => 'Paws::Organizations::Parent',
                              'type' => 'ArrayRef[Organizations_Parent]'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Organizations::ListParentsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If present, this value indicates that there is more output available
than is included in the current response. Use this value in the
C<NextToken> request parameter in a subsequent call to the operation to
get the next part of the output. You should repeat this until the
C<NextToken> response element comes back as C<null>.


=head2 Parents => ArrayRef[Organizations_Parent]

A list of parents for the specified child account or OU.


=head2 _request_id => Str


=cut

1;