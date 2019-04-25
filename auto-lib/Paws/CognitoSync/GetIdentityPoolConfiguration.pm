
package Paws::CognitoSync::GetIdentityPoolConfiguration;
  use Moose;
  has IdentityPoolId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'IdentityPoolId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIdentityPoolConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/identitypools/{IdentityPoolId}/configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoSync::GetIdentityPoolConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::GetIdentityPoolConfiguration - Arguments for method GetIdentityPoolConfiguration on L<Paws::CognitoSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIdentityPoolConfiguration on the
L<Amazon Cognito Sync|Paws::CognitoSync> service. Use the attributes of this class
as arguments to method GetIdentityPoolConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIdentityPoolConfiguration.

=head1 SYNOPSIS

    my $cognito-sync = Paws->service('CognitoSync');
    my $GetIdentityPoolConfigurationResponse =
      $cognito -sync->GetIdentityPoolConfiguration(
      IdentityPoolId => 'MyIdentityPoolId',

      );

    # Results:
    my $CognitoStreams = $GetIdentityPoolConfigurationResponse->CognitoStreams;
    my $IdentityPoolId = $GetIdentityPoolConfigurationResponse->IdentityPoolId;
    my $PushSync       = $GetIdentityPoolConfigurationResponse->PushSync;

  # Returns a L<Paws::CognitoSync::GetIdentityPoolConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-sync/GetIdentityPoolConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentityPoolId => Str

A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. This is the ID of the pool for which to return a
configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIdentityPoolConfiguration in L<Paws::CognitoSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

