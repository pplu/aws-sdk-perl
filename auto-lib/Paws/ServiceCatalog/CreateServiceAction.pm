
package Paws::ServiceCatalog::CreateServiceAction;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has Definition => (is => 'ro', isa => 'Paws::ServiceCatalog::ServiceActionDefinitionMap', required => 1);
  has DefinitionType => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has IdempotencyToken => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateServiceAction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::CreateServiceActionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::CreateServiceAction - Arguments for method CreateServiceAction on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateServiceAction on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method CreateServiceAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateServiceAction.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $CreateServiceActionOutput = $servicecatalog->CreateServiceAction(
      Definition => {
        'Name' => 'MyServiceActionDefinitionValue'
        , # key: values: Name, Version, AssumeRole, Parameters, value: min: 1, max: 1024
      },
      DefinitionType   => 'SSM_AUTOMATION',
      IdempotencyToken => 'MyIdempotencyToken',
      Name             => 'MyServiceActionName',
      AcceptLanguage   => 'MyAcceptLanguage',              # OPTIONAL
      Description      => 'MyServiceActionDescription',    # OPTIONAL
    );

    # Results:
    my $ServiceActionDetail = $CreateServiceActionOutput->ServiceActionDetail;

    # Returns a L<Paws::ServiceCatalog::CreateServiceActionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/CreateServiceAction>

=head1 ATTRIBUTES


=head2 AcceptLanguage => Str

The language code.

=over

=item *

C<en> - English (default)

=item *

C<jp> - Japanese

=item *

C<zh> - Chinese

=back




=head2 B<REQUIRED> Definition => L<Paws::ServiceCatalog::ServiceActionDefinitionMap>

The self-service action definition. Can be one of the following:

=over

=item Name

The name of the AWS Systems Manager Document. For example,
C<AWS-RestartEC2Instance>.

=item Version

The AWS Systems Manager automation document version. For example,
C<"Version": "1">

=item AssumeRole

The Amazon Resource Name (ARN) of the role that performs the
self-service actions on your behalf. For example, C<"AssumeRole":
"arn:aws:iam::12345678910:role/ActionRole">.

To reuse the provisioned product launch role, set to C<"AssumeRole":
"LAUNCH_ROLE">.

=item Parameters

The list of parameters in JSON format.

For example: C<[{\"Name\":\"InstanceId\",\"Type\":\"TARGET\"}]>.

=back




=head2 B<REQUIRED> DefinitionType => Str

The service action definition type. For example, C<SSM_AUTOMATION>.

Valid values are: C<"SSM_AUTOMATION">

=head2 Description => Str

The self-service action description.



=head2 B<REQUIRED> IdempotencyToken => Str

A unique identifier that you provide to ensure idempotency. If multiple
requests differ only by the idempotency token, the same response is
returned for each repeated request.



=head2 B<REQUIRED> Name => Str

The self-service action name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateServiceAction in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

