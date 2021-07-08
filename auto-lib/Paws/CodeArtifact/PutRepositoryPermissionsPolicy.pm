
package Paws::CodeArtifact::PutRepositoryPermissionsPolicy;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain-owner');
  has PolicyDocument => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyDocument', required => 1);
  has PolicyRevision => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyRevision');
  has Repository => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'repository', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRepositoryPermissionsPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/repository/permissions/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::PutRepositoryPermissionsPolicyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::PutRepositoryPermissionsPolicy - Arguments for method PutRepositoryPermissionsPolicy on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRepositoryPermissionsPolicy on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method PutRepositoryPermissionsPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRepositoryPermissionsPolicy.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $PutRepositoryPermissionsPolicyResult =
      $codeartifact->PutRepositoryPermissionsPolicy(
      Domain         => 'MyDomainName',
      PolicyDocument => 'MyPolicyDocument',
      Repository     => 'MyRepositoryName',
      DomainOwner    => 'MyAccountId',         # OPTIONAL
      PolicyRevision => 'MyPolicyRevision',    # OPTIONAL
      );

    # Results:
    my $Policy = $PutRepositoryPermissionsPolicyResult->Policy;

 # Returns a L<Paws::CodeArtifact::PutRepositoryPermissionsPolicyResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/PutRepositoryPermissionsPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain containing the repository to set the resource
policy on.



=head2 DomainOwner => Str

The 12-digit account number of the AWS account that owns the domain. It
does not include dashes or spaces.



=head2 B<REQUIRED> PolicyDocument => Str

A valid displayable JSON Aspen policy string to be set as the access
control resource policy on the provided repository.



=head2 PolicyRevision => Str

Sets the revision of the resource policy that specifies permissions to
access the repository. This revision is used for optimistic locking,
which prevents others from overwriting your changes to the repository's
resource policy.



=head2 B<REQUIRED> Repository => Str

The name of the repository to set the resource policy on.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRepositoryPermissionsPolicy in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

