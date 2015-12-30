
package Paws::ApiGateway::GetSdk;
  use Moose;
  has Parameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['ParamInQuery'], query_name => 'parameters' );
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId' , required => 1);
  has SdkType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sdkType' , required => 1);
  has StageName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'stageName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSdk');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/stages/{stage_name}/sdks/{sdk_type}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::SdkResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetSdkResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetSdk - Arguments for method GetSdk on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSdk on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method GetSdk.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSdk.

As an example:

  $service_obj->GetSdk(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Parameters => L<Paws::ApiGateway::MapOfStringToString>





=head2 B<REQUIRED> RestApiId => Str





=head2 B<REQUIRED> SdkType => Str





=head2 B<REQUIRED> StageName => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSdk in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

