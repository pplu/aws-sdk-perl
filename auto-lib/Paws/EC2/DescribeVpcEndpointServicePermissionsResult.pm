
package Paws::EC2::DescribeVpcEndpointServicePermissionsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_AllowedPrincipal/;
  has AllowedPrincipals => (is => 'ro', isa => ArrayRef[EC2_AllowedPrincipal]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AllowedPrincipals' => {
                                        'class' => 'Paws::EC2::AllowedPrincipal',
                                        'type' => 'ArrayRef[EC2_AllowedPrincipal]'
                                      },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'AllowedPrincipals' => 'allowedPrincipals',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcEndpointServicePermissionsResult

=head1 ATTRIBUTES


=head2 AllowedPrincipals => ArrayRef[EC2_AllowedPrincipal]

Information about one or more allowed principals.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

