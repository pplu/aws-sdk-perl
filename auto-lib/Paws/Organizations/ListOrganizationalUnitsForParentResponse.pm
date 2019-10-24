# Generated from json/callresult_class.tt

package Paws::Organizations::ListOrganizationalUnitsForParentResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Organizations::Types qw/Organizations_OrganizationalUnit/;
  has NextToken => (is => 'ro', isa => Str);
  has OrganizationalUnits => (is => 'ro', isa => ArrayRef[Organizations_OrganizationalUnit]);

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
               'OrganizationalUnits' => {
                                          'class' => 'Paws::Organizations::OrganizationalUnit',
                                          'type' => 'ArrayRef[Organizations_OrganizationalUnit]'
                                        }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Organizations::ListOrganizationalUnitsForParentResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If present, this value indicates that there is more output available
than is included in the current response. Use this value in the
C<NextToken> request parameter in a subsequent call to the operation to
get the next part of the output. You should repeat this until the
C<NextToken> response element comes back as C<null>.


=head2 OrganizationalUnits => ArrayRef[Organizations_OrganizationalUnit]

A list of the OUs in the specified root or parent OU.


=head2 _request_id => Str


=cut

1;