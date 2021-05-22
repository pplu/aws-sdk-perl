
package Paws::CodeArtifact::DeleteRepositoryPermissionsPolicy;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain-owner');
  has PolicyRevision => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'policy-revision');
  has Repository => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'repository', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRepositoryPermissionsPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/repository/permissions/policies');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::DeleteRepositoryPermissionsPolicyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::DeleteRepositoryPermissionsPolicy - Arguments for method DeleteRepositoryPermissionsPolicy on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRepositoryPermissionsPolicy on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method DeleteRepositoryPermissionsPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRepositoryPermissionsPolicy.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $DeleteRepositoryPermissionsPolicyResult =
      $codeartifact->DeleteRepositoryPermissionsPolicy(
      Domain         => 'MyDomainName',
      Repository     => 'MyRepositoryName',
      DomainOwner    => 'MyAccountId',         # OPTIONAL
      PolicyRevision => 'MyPolicyRevision',    # OPTIONAL
      );

    # Results:
    my $Policy = $DeleteRepositoryPermissionsPolicyResult->Policy;

# Returns a L<Paws::CodeArtifact::DeleteRepositoryPermissionsPolicyResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/DeleteRepositoryPermissionsPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain that contains the repository associated with the
resource policy to be deleted.



=head2 DomainOwner => Str

The 12-digit account number of the AWS account that owns the domain. It
does not include dashes or spaces.



=head2 PolicyRevision => Str

The revision of the repository's resource policy to be deleted. This
revision is used for optimistic locking, which prevents others from
accidentally overwriting your changes to the repository's resource
policy.



=head2 B<REQUIRED> Repository => Str

The name of the repository that is associated with the resource policy
to be deleted




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRepositoryPermissionsPolicy in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

