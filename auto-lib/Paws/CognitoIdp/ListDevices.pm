
package Paws::CognitoIdp::ListDevices;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has PaginationToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDevices');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::ListDevicesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListDevices - Arguments for method ListDevices on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDevices on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method ListDevices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDevices.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $ListDevicesResponse = $cognito -idp->ListDevices(
      AccessToken     => 'MyTokenModelType',
      Limit           => 1,                                # OPTIONAL
      PaginationToken => 'MySearchPaginationTokenType',    # OPTIONAL
    );

    # Results:
    my $Devices         = $ListDevicesResponse->Devices;
    my $PaginationToken = $ListDevicesResponse->PaginationToken;

    # Returns a L<Paws::CognitoIdp::ListDevicesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/ListDevices>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessToken => Str

The access tokens for the request to list devices.



=head2 Limit => Int

The limit of the device request.



=head2 PaginationToken => Str

The pagination token for the list request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDevices in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

