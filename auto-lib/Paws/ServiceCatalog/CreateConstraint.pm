
package Paws::ServiceCatalog::CreateConstraint;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IdempotencyToken => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'Str', required => 1);
  has PortfolioId => (is => 'ro', isa => 'Str', required => 1);
  has ProductId => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConstraint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::CreateConstraintOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::CreateConstraint - Arguments for method CreateConstraint on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConstraint on the 
AWS Service Catalog service. Use the attributes of this class
as arguments to method CreateConstraint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConstraint.

As an example:

  $service_obj->CreateConstraint(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

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




=head2 Description => Str

The text description of the constraint.



=head2 B<REQUIRED> IdempotencyToken => Str

A token to disambiguate duplicate requests. You can use the same input
in multiple requests, provided that you also specify a different
idempotency token for each request.



=head2 B<REQUIRED> Parameters => Str

The constraint parameters. Expected values vary depending on which
B<Type> is specified. For more information, see the Examples section.

For Type C<LAUNCH>, the C<RoleArn> property is required.

For Type C<NOTIFICATION>, the C<NotificationArns> property is required.

For Type C<TEMPLATE>, the C<Rules> property is required.



=head2 B<REQUIRED> PortfolioId => Str

The portfolio identifier.



=head2 B<REQUIRED> ProductId => Str

The product identifier.



=head2 B<REQUIRED> Type => Str

The type of the constraint. Case-sensitive valid values are: C<LAUNCH>,
C<NOTIFICATION>, or C<TEMPLATE>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConstraint in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

