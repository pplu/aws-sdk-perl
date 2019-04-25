
package Paws::Lambda::AddLayerVersionPermission;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', required => 1);
  has LayerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'LayerName', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str');
  has Principal => (is => 'ro', isa => 'Str', required => 1);
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'RevisionId');
  has StatementId => (is => 'ro', isa => 'Str', required => 1);
  has VersionNumber => (is => 'ro', isa => 'Int', traits => ['ParamInURI'], uri_name => 'VersionNumber', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddLayerVersionPermission');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2018-10-31/layers/{LayerName}/versions/{VersionNumber}/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::AddLayerVersionPermissionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::AddLayerVersionPermission - Arguments for method AddLayerVersionPermission on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddLayerVersionPermission on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method AddLayerVersionPermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddLayerVersionPermission.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    my $AddLayerVersionPermissionResponse = $lambda->AddLayerVersionPermission(
      Action         => 'MyLayerPermissionAllowedAction',
      LayerName      => 'MyLayerName',
      Principal      => 'MyLayerPermissionAllowedPrincipal',
      StatementId    => 'MyStatementId',
      VersionNumber  => 1,
      OrganizationId => 'MyOrganizationId',                    # OPTIONAL
      RevisionId     => 'MyString',                            # OPTIONAL
    );

    # Results:
    my $RevisionId = $AddLayerVersionPermissionResponse->RevisionId;
    my $Statement  = $AddLayerVersionPermissionResponse->Statement;

    # Returns a L<Paws::Lambda::AddLayerVersionPermissionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/AddLayerVersionPermission>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

The API action that grants access to the layer. For example,
C<lambda:GetLayerVersion>.



=head2 B<REQUIRED> LayerName => Str

The name or Amazon Resource Name (ARN) of the layer.



=head2 OrganizationId => Str

With the principal set to C<*>, grant permission to all accounts in the
specified organization.



=head2 B<REQUIRED> Principal => Str

An account ID, or C<*> to grant permission to all AWS accounts.



=head2 RevisionId => Str

Only update the policy if the revision ID matches the ID specified. Use
this option to avoid modifying a policy that has changed since you last
read it.



=head2 B<REQUIRED> StatementId => Str

An identifier that distinguishes the policy from others on the same
layer version.



=head2 B<REQUIRED> VersionNumber => Int

The version number.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddLayerVersionPermission in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

