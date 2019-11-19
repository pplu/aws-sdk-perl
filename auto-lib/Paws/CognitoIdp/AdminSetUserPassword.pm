# Generated from json/callargs_class.tt

package Paws::CognitoIdp::AdminSetUserPassword;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::CognitoIdp::Types qw//;
  has Password => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Permanent => (is => 'ro', isa => Bool, predicate => 1);
  has Username => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has UserPoolId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AdminSetUserPassword');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CognitoIdp::AdminSetUserPasswordResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Password' => 1,
                    'UserPoolId' => 1,
                    'Username' => 1
                  },
  'types' => {
               'Username' => {
                               'type' => 'Str'
                             },
               'UserPoolId' => {
                                 'type' => 'Str'
                               },
               'Permanent' => {
                                'type' => 'Bool'
                              },
               'Password' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminSetUserPassword - Arguments for method AdminSetUserPassword on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AdminSetUserPassword on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method AdminSetUserPassword.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AdminSetUserPassword.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $AdminSetUserPasswordResponse = $cognito -idp->AdminSetUserPassword(
      Password   => 'MyPasswordType',
      UserPoolId => 'MyUserPoolIdType',
      Username   => 'MyUsernameType',
      Permanent  => 1,                    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/AdminSetUserPassword>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Password => Str

The password for the user.



=head2 Permanent => Bool

C<True> if the password is permanent, C<False> if it is temporary.



=head2 B<REQUIRED> Username => Str

The user name of the user whose password you wish to set.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool where you want to set the user's
password.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AdminSetUserPassword in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

