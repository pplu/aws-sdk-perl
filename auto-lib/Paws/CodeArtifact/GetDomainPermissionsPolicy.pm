
package Paws::CodeArtifact::GetDomainPermissionsPolicy;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain-owner');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDomainPermissionsPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/domain/permissions/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::GetDomainPermissionsPolicyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::GetDomainPermissionsPolicy - Arguments for method GetDomainPermissionsPolicy on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDomainPermissionsPolicy on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method GetDomainPermissionsPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDomainPermissionsPolicy.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $GetDomainPermissionsPolicyResult =
      $codeartifact->GetDomainPermissionsPolicy(
      Domain      => 'MyDomainName',
      DomainOwner => 'MyAccountId',    # OPTIONAL
      );

    # Results:
    my $Policy = $GetDomainPermissionsPolicyResult->Policy;

    # Returns a L<Paws::CodeArtifact::GetDomainPermissionsPolicyResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/GetDomainPermissionsPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain to which the resource policy is attached.



=head2 DomainOwner => Str

The 12-digit account number of the AWS account that owns the domain. It
does not include dashes or spaces.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDomainPermissionsPolicy in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

