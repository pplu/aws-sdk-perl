
package Paws::ApiGateway::UpdateStage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ApiGateway::Types qw/ApiGateway_PatchOperation/;
  has PatchOperations => (is => 'ro', isa => ArrayRef[ApiGateway_PatchOperation], predicate => 1);
  has RestApiId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has StageName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateStage');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/restapis/{restapi_id}/stages/{stage_name}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PATCH');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApiGateway::Stage');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RestApiId' => {
                                'type' => 'Str'
                              },
               'StageName' => {
                                'type' => 'Str'
                              },
               'PatchOperations' => {
                                      'class' => 'Paws::ApiGateway::PatchOperation',
                                      'type' => 'ArrayRef[ApiGateway_PatchOperation]'
                                    }
             },
  'ParamInURI' => {
                    'RestApiId' => 'restapi_id',
                    'StageName' => 'stage_name'
                  },
  'NameInRequest' => {
                       'PatchOperations' => 'patchOperations'
                     },
  'IsRequired' => {
                    'RestApiId' => 1,
                    'StageName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UpdateStage - Arguments for method UpdateStage on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStage on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method UpdateStage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStage.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $Stage = $apigateway->UpdateStage(
      RestApiId       => 'MyString',
      StageName       => 'MyString',
      PatchOperations => [
        {
          From => 'MyString',
          Op =>
            'add',    # values: add, remove, replace, move, copy, test; OPTIONAL
          Path  => 'MyString',
          Value => 'MyString',
        },
        ...
      ],              # OPTIONAL
    );

    # Results:
    my $AccessLogSettings    = $Stage->AccessLogSettings;
    my $CacheClusterEnabled  = $Stage->CacheClusterEnabled;
    my $CacheClusterSize     = $Stage->CacheClusterSize;
    my $CacheClusterStatus   = $Stage->CacheClusterStatus;
    my $CanarySettings       = $Stage->CanarySettings;
    my $ClientCertificateId  = $Stage->ClientCertificateId;
    my $CreatedDate          = $Stage->CreatedDate;
    my $DeploymentId         = $Stage->DeploymentId;
    my $Description          = $Stage->Description;
    my $DocumentationVersion = $Stage->DocumentationVersion;
    my $LastUpdatedDate      = $Stage->LastUpdatedDate;
    my $MethodSettings       = $Stage->MethodSettings;
    my $StageName            = $Stage->StageName;
    my $Tags                 = $Stage->Tags;
    my $TracingEnabled       = $Stage->TracingEnabled;
    my $Variables            = $Stage->Variables;
    my $WebAclArn            = $Stage->WebAclArn;

    # Returns a L<Paws::ApiGateway::Stage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/UpdateStage>

=head1 ATTRIBUTES


=head2 PatchOperations => ArrayRef[ApiGateway_PatchOperation]

A list of update operations to be applied to the specified resource and
in the order specified in this list.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.



=head2 B<REQUIRED> StageName => Str

[Required] The name of the Stage resource to change information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStage in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

