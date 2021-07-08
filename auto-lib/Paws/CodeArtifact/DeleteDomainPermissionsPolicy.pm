
package Paws::CodeArtifact::DeleteDomainPermissionsPolicy;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain-owner');
  has PolicyRevision => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'policy-revision');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDomainPermissionsPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/domain/permissions/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::DeleteDomainPermissionsPolicyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::DeleteDomainPermissionsPolicy - Arguments for method DeleteDomainPermissionsPolicy on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDomainPermissionsPolicy on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method DeleteDomainPermissionsPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDomainPermissionsPolicy.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $DeleteDomainPermissionsPolicyResult =
      $codeartifact->DeleteDomainPermissionsPolicy(
      Domain         => 'MyDomainName',
      DomainOwner    => 'MyAccountId',         # OPTIONAL
      PolicyRevision => 'MyPolicyRevision',    # OPTIONAL
      );

    # Results:
    my $Policy = $DeleteDomainPermissionsPolicyResult->Policy;

  # Returns a L<Paws::CodeArtifact::DeleteDomainPermissionsPolicyResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/DeleteDomainPermissionsPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain associated with the resource policy to be
deleted.



=head2 DomainOwner => Str

The 12-digit account number of the AWS account that owns the domain. It
does not include dashes or spaces.



=head2 PolicyRevision => Str

The current revision of the resource policy to be deleted. This
revision is used for optimistic locking, which prevents others from
overwriting your changes to the domain's resource policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDomainPermissionsPolicy in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

