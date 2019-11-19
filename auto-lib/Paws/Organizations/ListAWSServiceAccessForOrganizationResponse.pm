# Generated from json/callresult_class.tt

package Paws::Organizations::ListAWSServiceAccessForOrganizationResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Organizations::Types qw/Organizations_EnabledServicePrincipal/;
  has EnabledServicePrincipals => (is => 'ro', isa => ArrayRef[Organizations_EnabledServicePrincipal]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'EnabledServicePrincipals' => {
                                               'class' => 'Paws::Organizations::EnabledServicePrincipal',
                                               'type' => 'ArrayRef[Organizations_EnabledServicePrincipal]'
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

Paws::Organizations::ListAWSServiceAccessForOrganizationResponse

=head1 ATTRIBUTES


=head2 EnabledServicePrincipals => ArrayRef[Organizations_EnabledServicePrincipal]

A list of the service principals for the services that are enabled to
integrate with your organization. Each principal is a structure that
includes the name and the date that it was enabled for integration with
AWS Organizations.


=head2 NextToken => Str

If present, this value indicates that there is more output available
than is included in the current response. Use this value in the
C<NextToken> request parameter in a subsequent call to the operation to
get the next part of the output. You should repeat this until the
C<NextToken> response element comes back as C<null>.


=head2 _request_id => Str


=cut

1;