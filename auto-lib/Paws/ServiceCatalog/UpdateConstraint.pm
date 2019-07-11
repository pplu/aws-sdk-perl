
package Paws::ServiceCatalog::UpdateConstraint;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConstraint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::UpdateConstraintOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::UpdateConstraint - Arguments for method UpdateConstraint on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConstraint on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method UpdateConstraint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConstraint.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $UpdateConstraintOutput = $servicecatalog->UpdateConstraint(
      Id             => 'MyId',
      AcceptLanguage => 'MyAcceptLanguage',           # OPTIONAL
      Description    => 'MyConstraintDescription',    # OPTIONAL
      Parameters     => 'MyConstraintParameters',     # OPTIONAL
    );

    # Results:
    my $ConstraintDetail     = $UpdateConstraintOutput->ConstraintDetail;
    my $ConstraintParameters = $UpdateConstraintOutput->ConstraintParameters;
    my $Status               = $UpdateConstraintOutput->Status;

    # Returns a L<Paws::ServiceCatalog::UpdateConstraintOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/UpdateConstraint>

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

The updated description of the constraint.



=head2 B<REQUIRED> Id => Str

The identifier of the constraint.



=head2 Parameters => Str

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

=item RESOURCE_UPDATE

Specify the C<TagUpdatesOnProvisionedProduct> property as follows:

C<{"Version":"2.0","Properties":{"TagUpdateOnProvisionedProduct":"String"}}>

The C<TagUpdatesOnProvisionedProduct> property accepts a string value
of C<ALLOWED> or C<NOT_ALLOWED>.

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





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConstraint in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

