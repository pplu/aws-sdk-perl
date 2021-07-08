
package Paws::CodeArtifact::GetRepositoryEndpoint;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain-owner');
  has Format => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'format', required => 1);
  has Repository => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'repository', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRepositoryEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/repository/endpoint');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::GetRepositoryEndpointResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::GetRepositoryEndpoint - Arguments for method GetRepositoryEndpoint on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRepositoryEndpoint on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method GetRepositoryEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRepositoryEndpoint.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $GetRepositoryEndpointResult = $codeartifact->GetRepositoryEndpoint(
      Domain      => 'MyDomainName',
      Format      => 'npm',
      Repository  => 'MyRepositoryName',
      DomainOwner => 'MyAccountId',        # OPTIONAL
    );

    # Results:
    my $RepositoryEndpoint = $GetRepositoryEndpointResult->RepositoryEndpoint;

    # Returns a L<Paws::CodeArtifact::GetRepositoryEndpointResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/GetRepositoryEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The name of the domain that contains the repository.



=head2 DomainOwner => Str

The 12-digit account number of the AWS account that owns the domain
that contains the repository. It does not include dashes or spaces.



=head2 B<REQUIRED> Format => Str

Returns which endpoint of a repository to return. A repository has one
endpoint for each package format:

=over

=item *

C<npm>

=item *

C<pypi>

=item *

C<maven>

=back


Valid values are: C<"npm">, C<"pypi">, C<"maven">, C<"nuget">

=head2 B<REQUIRED> Repository => Str

The name of the repository.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRepositoryEndpoint in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

