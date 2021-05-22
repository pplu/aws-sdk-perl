
package Paws::Connect::CreateUseCase;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has IntegrationAssociationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'IntegrationAssociationId', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Connect::TagMap');
  has UseCaseType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUseCase');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/instance/{InstanceId}/integration-associations/{IntegrationAssociationId}/use-cases');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::CreateUseCaseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateUseCase - Arguments for method CreateUseCase on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUseCase on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method CreateUseCase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUseCase.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $CreateUseCaseResponse = $connect->CreateUseCase(
      InstanceId               => 'MyInstanceId',
      IntegrationAssociationId => 'MyIntegrationAssociationId',
      UseCaseType              => 'RULES_EVALUATION',
      Tags                     => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $UseCaseArn = $CreateUseCaseResponse->UseCaseArn;
    my $UseCaseId  = $CreateUseCaseResponse->UseCaseId;

    # Returns a L<Paws::Connect::CreateUseCaseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/CreateUseCase>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.



=head2 B<REQUIRED> IntegrationAssociationId => Str

The identifier for the AppIntegration association.



=head2 Tags => L<Paws::Connect::TagMap>

One or more tags.



=head2 B<REQUIRED> UseCaseType => Str

The type of use case to associate to the AppIntegration association.
Each AppIntegration association can have only one of each use case
type.

Valid values are: C<"RULES_EVALUATION">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUseCase in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

