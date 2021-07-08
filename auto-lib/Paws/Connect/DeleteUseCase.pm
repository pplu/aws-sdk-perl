
package Paws::Connect::DeleteUseCase;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has IntegrationAssociationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'IntegrationAssociationId', required => 1);
  has UseCaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'UseCaseId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteUseCase');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/instance/{InstanceId}/integration-associations/{IntegrationAssociationId}/use-cases/{UseCaseId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DeleteUseCase - Arguments for method DeleteUseCase on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteUseCase on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method DeleteUseCase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteUseCase.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    $connect->DeleteUseCase(
      InstanceId               => 'MyInstanceId',
      IntegrationAssociationId => 'MyIntegrationAssociationId',
      UseCaseId                => 'MyUseCaseId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/DeleteUseCase>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instanceId in the ARN of the instance.



=head2 B<REQUIRED> IntegrationAssociationId => Str

The identifier for the AppIntegration association.



=head2 B<REQUIRED> UseCaseId => Str

The identifier for the use case.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteUseCase in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

