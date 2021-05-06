
package Paws::CognitoIdp::AdminListDevices;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has PaginationToken => (is => 'ro', isa => 'Str');
  has Username => (is => 'ro', isa => 'Str', required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AdminListDevices');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::AdminListDevicesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminListDevices - Arguments for method AdminListDevices on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AdminListDevices on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method AdminListDevices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AdminListDevices.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $AdminListDevicesResponse = $cognito -idp->AdminListDevices(
      UserPoolId      => 'MyUserPoolIdType',
      Username        => 'MyUsernameType',
      Limit           => 1,                                # OPTIONAL
      PaginationToken => 'MySearchPaginationTokenType',    # OPTIONAL
    );

    # Results:
    my $Devices         = $AdminListDevicesResponse->Devices;
    my $PaginationToken = $AdminListDevicesResponse->PaginationToken;

    # Returns a L<Paws::CognitoIdp::AdminListDevicesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/AdminListDevices>

=head1 ATTRIBUTES


=head2 Limit => Int

The limit of the devices request.



=head2 PaginationToken => Str

The pagination token.



=head2 B<REQUIRED> Username => Str

The user name.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AdminListDevices in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

