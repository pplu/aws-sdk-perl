
package Paws::IoT::TestAuthorization;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::IoT::Types qw/IoT_AuthInfo/;
  has AuthInfos => (is => 'ro', isa => ArrayRef[IoT_AuthInfo], required => 1, predicate => 1);
  has ClientId => (is => 'ro', isa => Str, predicate => 1);
  has CognitoIdentityPoolId => (is => 'ro', isa => Str, predicate => 1);
  has PolicyNamesToAdd => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has PolicyNamesToSkip => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has Principal => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'TestAuthorization');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/test-authorization');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::TestAuthorizationResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PolicyNamesToAdd' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'ClientId' => {
                               'type' => 'Str'
                             },
               'AuthInfos' => {
                                'class' => 'Paws::IoT::AuthInfo',
                                'type' => 'ArrayRef[IoT_AuthInfo]'
                              },
               'PolicyNamesToSkip' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               'CognitoIdentityPoolId' => {
                                            'type' => 'Str'
                                          },
               'Principal' => {
                                'type' => 'Str'
                              }
             },
  'ParamInQuery' => {
                      'ClientId' => 'clientId'
                    },
  'NameInRequest' => {
                       'PolicyNamesToAdd' => 'policyNamesToAdd',
                       'AuthInfos' => 'authInfos',
                       'PolicyNamesToSkip' => 'policyNamesToSkip',
                       'CognitoIdentityPoolId' => 'cognitoIdentityPoolId',
                       'Principal' => 'principal'
                     },
  'IsRequired' => {
                    'AuthInfos' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::TestAuthorization - Arguments for method TestAuthorization on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestAuthorization on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method TestAuthorization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestAuthorization.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $TestAuthorizationResponse = $iot->TestAuthorization(
      AuthInfos => [
        {
          ActionType =>
            'PUBLISH',  # values: PUBLISH, SUBSCRIBE, RECEIVE, CONNECT; OPTIONAL
          Resources => [ 'MyResource', ... ],    # OPTIONAL
        },
        ...
      ],
      ClientId              => 'MyClientId',                 # OPTIONAL
      CognitoIdentityPoolId => 'MyCognitoIdentityPoolId',    # OPTIONAL
      PolicyNamesToAdd      => [
        'MyPolicyName', ...                                  # min: 1, max: 128
      ],                                                     # OPTIONAL
      PolicyNamesToSkip => [
        'MyPolicyName', ...                                  # min: 1, max: 128
      ],                                                     # OPTIONAL
      Principal => 'MyPrincipal',                            # OPTIONAL
    );

    # Results:
    my $AuthResults = $TestAuthorizationResponse->AuthResults;

    # Returns a L<Paws::IoT::TestAuthorizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/TestAuthorization>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthInfos => ArrayRef[IoT_AuthInfo]

A list of authorization info objects. Simulating authorization will
create a response for each C<authInfo> object in the list.



=head2 ClientId => Str

The MQTT client ID.



=head2 CognitoIdentityPoolId => Str

The Cognito identity pool ID.



=head2 PolicyNamesToAdd => ArrayRef[Str|Undef]

When testing custom authorization, the policies specified here are
treated as if they are attached to the principal being authorized.



=head2 PolicyNamesToSkip => ArrayRef[Str|Undef]

When testing custom authorization, the policies specified here are
treated as if they are not attached to the principal being authorized.



=head2 Principal => Str

The principal.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestAuthorization in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

