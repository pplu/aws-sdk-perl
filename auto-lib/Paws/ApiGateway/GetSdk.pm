
package Paws::ApiGateway::GetSdk;
  use Moose;
  has Parameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['ParamInQuery'], query_name => 'parameters');
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);
  has SdkType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sdk_type', required => 1);
  has StageName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'stage_name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSdk');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/stages/{stage_name}/sdks/{sdk_type}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::SdkResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetSdk - Arguments for method GetSdk on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSdk on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method GetSdk.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSdk.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $SdkResponse = $apigateway->GetSdk(
      RestApiId  => 'MyString',
      SdkType    => 'MyString',
      StageName  => 'MyString',
      Parameters => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $Body               = $SdkResponse->Body;
    my $ContentDisposition = $SdkResponse->ContentDisposition;
    my $ContentType        = $SdkResponse->ContentType;

    # Returns a L<Paws::ApiGateway::SdkResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetSdk>

=head1 ATTRIBUTES


=head2 Parameters => L<Paws::ApiGateway::MapOfStringToString>

A string-to-string key-value map of query parameters
C<sdkType>-dependent properties of the SDK. For C<sdkType> of
C<objectivec> or C<swift>, a parameter named C<classPrefix> is
required. For C<sdkType> of C<android>, parameters named C<groupId>,
C<artifactId>, C<artifactVersion>, and C<invokerPackage> are required.
For C<sdkType> of C<java>, parameters named C<serviceName> and
C<javaPackageName> are required.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.



=head2 B<REQUIRED> SdkType => Str

[Required] The language for the generated SDK. Currently C<java>,
C<javascript>, C<android>, C<objectivec> (for iOS), C<swift> (for iOS),
and C<ruby> are supported.



=head2 B<REQUIRED> StageName => Str

[Required] The name of the Stage that the SDK will use.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSdk in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

