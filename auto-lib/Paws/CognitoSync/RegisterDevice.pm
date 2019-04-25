
package Paws::CognitoSync::RegisterDevice;
  use Moose;
  has IdentityId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'IdentityId', required => 1);
  has IdentityPoolId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'IdentityPoolId', required => 1);
  has Platform => (is => 'ro', isa => 'Str', required => 1);
  has Token => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterDevice');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/identitypools/{IdentityPoolId}/identity/{IdentityId}/device');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoSync::RegisterDeviceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::RegisterDevice - Arguments for method RegisterDevice on L<Paws::CognitoSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterDevice on the
L<Amazon Cognito Sync|Paws::CognitoSync> service. Use the attributes of this class
as arguments to method RegisterDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterDevice.

=head1 SYNOPSIS

    my $cognito-sync = Paws->service('CognitoSync');
    my $RegisterDeviceResponse = $cognito -sync->RegisterDevice(
      IdentityId     => 'MyIdentityId',
      IdentityPoolId => 'MyIdentityPoolId',
      Platform       => 'APNS',
      Token          => 'MyPushToken',

    );

    # Results:
    my $DeviceId = $RegisterDeviceResponse->DeviceId;

    # Returns a L<Paws::CognitoSync::RegisterDeviceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-sync/RegisterDevice>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentityId => Str

The unique ID for this identity.



=head2 B<REQUIRED> IdentityPoolId => Str

A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. Here, the ID of the pool that the identity belongs to.



=head2 B<REQUIRED> Platform => Str

The SNS platform type (e.g. GCM, SDM, APNS, APNS_SANDBOX).

Valid values are: C<"APNS">, C<"APNS_SANDBOX">, C<"GCM">, C<"ADM">

=head2 B<REQUIRED> Token => Str

The push token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterDevice in L<Paws::CognitoSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

