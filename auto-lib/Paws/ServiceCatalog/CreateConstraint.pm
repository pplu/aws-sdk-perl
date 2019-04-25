
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
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method CreateConstraint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConstraint.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $CreateConstraintOutput = $servicecatalog->CreateConstraint(
      IdempotencyToken => 'MyIdempotencyToken',
      Parameters       => 'MyConstraintParameters',
      PortfolioId      => 'MyId',
      ProductId        => 'MyId',
      Type             => 'MyConstraintType',
      AcceptLanguage   => 'MyAcceptLanguage',           # OPTIONAL
      Description      => 'MyConstraintDescription',    # OPTIONAL
    );

    # Results:
    my $ConstraintDetail     = $CreateConstraintOutput->ConstraintDetail;
    my $ConstraintParameters = $CreateConstraintOutput->ConstraintParameters;
    my $Status               = $CreateConstraintOutput->Status;

    # Returns a L<Paws::ServiceCatalog::CreateConstraintOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/CreateConstraint>

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

The description of the constraint.



=head2 B<REQUIRED> IdempotencyToken => Str

A unique identifier that you provide to ensure idempotency. If multiple
requests differ only by the idempotency token, the same response is
returned for each repeated request.



=head2 B<REQUIRED> Parameters => Str

The constraint parameters, in JSON format. The syntax depends on the
constraint type as follows:

=over

=item LAUNCH

Specify the C<RoleArn> property as follows:

C<{"RoleArn" : "arn:aws:iam::123456789012:role/LaunchRole"}>

You cannot have both a C<LAUNCH> and a C<STACKSET> constraint.

You also cannot have more than one C<LAUNCH> constraint on a product
and portfolio.

=item NOTIFICATION

Specify the C<NotificationArns> property as follows:

C<{"NotificationArns" : ["arn:aws:sns:us-east-1:123456789012:Topic"]}>

=item STACKSET

Specify the C<Parameters> property as follows:

C<{"Version": "String", "Properties": {"AccountList": [ "String" ],
"RegionList": [ "String" ], "AdminRole": "String", "ExecutionRole":
"String"}}>

You cannot have both a C<LAUNCH> and a C<STACKSET> constraint.

You also cannot have more than one C<STACKSET> constraint on a product
and portfolio.

Products with a C<STACKSET> constraint will launch an AWS
CloudFormation stack set.

=item TEMPLATE

Specify the C<Rules> property. For more information, see Template
Constraint Rules
(http://docs.aws.amazon.com/servicecatalog/latest/adminguide/reference-template_constraint_rules.html).

=back




=head2 B<REQUIRED> PortfolioId => Str

The portfolio identifier.



=head2 B<REQUIRED> ProductId => Str

The product identifier.



=head2 B<REQUIRED> Type => Str

The type of constraint.

=over

=item *

C<LAUNCH>

=item *

C<NOTIFICATION>

=item *

C<STACKSET>

=item *

C<TEMPLATE>

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConstraint in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

