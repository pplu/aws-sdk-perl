
package Paws::CognitoIdp::AdminGetUser;
  use Moose;
  has Username => (is => 'ro', isa => 'Str', required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AdminGetUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::AdminGetUserResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminGetUser - Arguments for method AdminGetUser on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AdminGetUser on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method AdminGetUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AdminGetUser.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $AdminGetUserResponse = $cognito -idp->AdminGetUser(
      UserPoolId => 'MyUserPoolIdType',
      Username   => 'MyUsernameType',

    );

    # Results:
    my $Enabled              = $AdminGetUserResponse->Enabled;
    my $MFAOptions           = $AdminGetUserResponse->MFAOptions;
    my $PreferredMfaSetting  = $AdminGetUserResponse->PreferredMfaSetting;
    my $UserAttributes       = $AdminGetUserResponse->UserAttributes;
    my $UserCreateDate       = $AdminGetUserResponse->UserCreateDate;
    my $UserLastModifiedDate = $AdminGetUserResponse->UserLastModifiedDate;
    my $UserMFASettingList   = $AdminGetUserResponse->UserMFASettingList;
    my $UserStatus           = $AdminGetUserResponse->UserStatus;
    my $Username             = $AdminGetUserResponse->Username;

    # Returns a L<Paws::CognitoIdp::AdminGetUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/AdminGetUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Username => Str

The user name of the user you wish to retrieve.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool where you want to get information
about the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AdminGetUser in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

