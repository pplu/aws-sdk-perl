# Generated from json/callresult_class.tt

package Paws::ACMPCA::ListPermissionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ACMPCA::Types qw/ACMPCA_Permission/;
  has NextToken => (is => 'ro', isa => Str);
  has Permissions => (is => 'ro', isa => ArrayRef[ACMPCA_Permission]);

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
               'Permissions' => {
                                  'class' => 'Paws::ACMPCA::Permission',
                                  'type' => 'ArrayRef[ACMPCA_Permission]'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::ListPermissionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When the list is truncated, this value is present and should be used
for the B<NextToken> parameter in a subsequent pagination request.


=head2 Permissions => ArrayRef[ACMPCA_Permission]

Summary information about each permission assigned by the specified
private CA, including the action enabled, the policy provided, and the
time of creation.


=head2 _request_id => Str


=cut

1;