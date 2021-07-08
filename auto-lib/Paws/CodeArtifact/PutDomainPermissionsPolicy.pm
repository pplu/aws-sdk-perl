
package Paws::CodeArtifact::PutDomainPermissionsPolicy;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainOwner');
  has PolicyDocument => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyDocument', required => 1);
  has PolicyRevision => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyRevision');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutDomainPermissionsPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/domain/permissions/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::PutDomainPermissionsPolicyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::PutDomainPermissionsPolicy - Arguments for method PutDomainPermissionsPolicy on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutDomainPermissionsPolicy on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method PutDomainPermissionsPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutDomainPermissionsPolicy.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $PutDomainPermissionsPolicyResult =
      $codeartifact->PutDomainPermissionsPolicy(
      Domain         => 'MyDomainName',
      PolicyDocument => 'MyPolicyDocument',
      DomainOwner    => 'MyAccountId',         # OPTIONAL
      PolicyRevision => 'MyPolicyRevision',    # OPTIONAL
      );

    # Results:
    my $Policy = $PutDomainPermissionsPolicyResult->Policy;

    # Returns a L<Paws::CodeArtifact::PutDomainPermissionsPolicyResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/PutDomainPermissionsPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain on which to set the resource policy.



=head2 DomainOwner => Str

The 12-digit account number of the AWS account that owns the domain. It
does not include dashes or spaces.



=head2 B<REQUIRED> PolicyDocument => Str

A valid displayable JSON Aspen policy string to be set as the access
control resource policy on the provided domain.



=head2 PolicyRevision => Str

The current revision of the resource policy to be set. This revision is
used for optimistic locking, which prevents others from overwriting
your changes to the domain's resource policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutDomainPermissionsPolicy in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

