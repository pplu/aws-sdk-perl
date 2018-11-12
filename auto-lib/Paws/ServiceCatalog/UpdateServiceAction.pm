
package Paws::ServiceCatalog::UpdateServiceAction;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has Definition => (is => 'ro', isa => 'Paws::ServiceCatalog::ServiceActionDefinitionMap');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServiceAction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::UpdateServiceActionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::UpdateServiceAction - Arguments for method UpdateServiceAction on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateServiceAction on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method UpdateServiceAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateServiceAction.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $UpdateServiceActionOutput = $servicecatalog->UpdateServiceAction(
      Id             => 'MyId',
      AcceptLanguage => 'MyAcceptLanguage',    # OPTIONAL
      Definition     => {
        'Name' => 'MyServiceActionDefinitionValue'
        , # key: values: Name, Version, AssumeRole, Parameters, value: min: 1, max: 1024
      },    # OPTIONAL
      Description => 'MyServiceActionDescription',    # OPTIONAL
      Name        => 'MyServiceActionName',           # OPTIONAL
    );

    # Results:
    my $ServiceActionDetail = $UpdateServiceActionOutput->ServiceActionDetail;

    # Returns a L<Paws::ServiceCatalog::UpdateServiceActionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/UpdateServiceAction>

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




=head2 Definition => L<Paws::ServiceCatalog::ServiceActionDefinitionMap>

A map that defines the self-service action.



=head2 Description => Str

The self-service action description.



=head2 B<REQUIRED> Id => Str

The self-service action identifier.



=head2 Name => Str

The self-service action name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateServiceAction in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

