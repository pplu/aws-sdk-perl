
package Paws::CognitoIdp::GetUser;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::GetUserResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GetUser - Arguments for method GetUser on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUser on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method GetUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUser.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $GetUserResponse = $cognito -idp->GetUser(
      AccessToken => 'MyTokenModelType',

    );

    # Results:
    my $MFAOptions          = $GetUserResponse->MFAOptions;
    my $PreferredMfaSetting = $GetUserResponse->PreferredMfaSetting;
    my $UserAttributes      = $GetUserResponse->UserAttributes;
    my $UserMFASettingList  = $GetUserResponse->UserMFASettingList;
    my $Username            = $GetUserResponse->Username;

    # Returns a L<Paws::CognitoIdp::GetUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/GetUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessToken => Str

The access token returned by the server response to get information
about the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUser in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

