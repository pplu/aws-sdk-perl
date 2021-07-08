
package Paws::Connect::CreateIntegrationAssociation;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has IntegrationArn => (is => 'ro', isa => 'Str', required => 1);
  has IntegrationType => (is => 'ro', isa => 'Str', required => 1);
  has SourceApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has SourceApplicationUrl => (is => 'ro', isa => 'Str', required => 1);
  has SourceType => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Connect::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIntegrationAssociation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/instance/{InstanceId}/integration-associations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::CreateIntegrationAssociationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateIntegrationAssociation - Arguments for method CreateIntegrationAssociation on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIntegrationAssociation on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method CreateIntegrationAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIntegrationAssociation.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $CreateIntegrationAssociationResponse =
      $connect->CreateIntegrationAssociation(
      InstanceId            => 'MyInstanceId',
      IntegrationArn        => 'MyARN',
      IntegrationType       => 'EVENT',
      SourceApplicationName => 'MySourceApplicationName',
      SourceApplicationUrl  => 'MyURI',
      SourceType            => 'SALESFORCE',
      Tags                  => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $IntegrationAssociationArn =
      $CreateIntegrationAssociationResponse->IntegrationAssociationArn;
    my $IntegrationAssociationId =
      $CreateIntegrationAssociationResponse->IntegrationAssociationId;

    # Returns a L<Paws::Connect::CreateIntegrationAssociationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/CreateIntegrationAssociation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instanceId in the ARN of the instance.



=head2 B<REQUIRED> IntegrationArn => Str

The Amazon Resource Name (ARN) of the integration.



=head2 B<REQUIRED> IntegrationType => Str

The type of information to be ingested.

Valid values are: C<"EVENT">

=head2 B<REQUIRED> SourceApplicationName => Str

The name of the external application.



=head2 B<REQUIRED> SourceApplicationUrl => Str

The URL for the external application.



=head2 B<REQUIRED> SourceType => Str

The type of the data source.

Valid values are: C<"SALESFORCE">, C<"ZENDESK">

=head2 Tags => L<Paws::Connect::TagMap>

One or more tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIntegrationAssociation in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

