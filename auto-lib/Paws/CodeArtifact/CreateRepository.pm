
package Paws::CodeArtifact::CreateRepository;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Domain => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain', required => 1);
  has DomainOwner => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domain-owner');
  has Repository => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'repository', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodeArtifact::Tag]', traits => ['NameInRequest'], request_name => 'tags');
  has Upstreams => (is => 'ro', isa => 'ArrayRef[Paws::CodeArtifact::UpstreamRepository]', traits => ['NameInRequest'], request_name => 'upstreams');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRepository');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/repository');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeArtifact::CreateRepositoryResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::CreateRepository - Arguments for method CreateRepository on L<Paws::CodeArtifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRepository on the
L<CodeArtifact|Paws::CodeArtifact> service. Use the attributes of this class
as arguments to method CreateRepository.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRepository.

=head1 SYNOPSIS

    my $codeartifact = Paws->service('CodeArtifact');
    my $CreateRepositoryResult = $codeartifact->CreateRepository(
      Domain      => 'MyDomainName',
      Repository  => 'MyRepositoryName',
      Description => 'MyDescription',      # OPTIONAL
      DomainOwner => 'MyAccountId',        # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',             # min: 1, max: 128
          Value => 'MyTagValue',           # max: 256

        },
        ...
      ],                                   # OPTIONAL
      Upstreams => [
        {
          RepositoryName => 'MyRepositoryName',    # min: 2, max: 100

        },
        ...
      ],                                           # OPTIONAL
    );

    # Results:
    my $Repository = $CreateRepositoryResult->Repository;

    # Returns a L<Paws::CodeArtifact::CreateRepositoryResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeartifact/CreateRepository>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the created repository.



=head2 B<REQUIRED> Domain => Str

The name of the domain that contains the created repository.



=head2 DomainOwner => Str

The 12-digit account number of the AWS account that owns the domain. It
does not include dashes or spaces.



=head2 B<REQUIRED> Repository => Str

The name of the repository to create.



=head2 Tags => ArrayRef[L<Paws::CodeArtifact::Tag>]

One or more tag key-value pairs for the repository.



=head2 Upstreams => ArrayRef[L<Paws::CodeArtifact::UpstreamRepository>]

A list of upstream repositories to associate with the repository. The
order of the upstream repositories in the list determines their
priority order when AWS CodeArtifact looks for a requested package
version. For more information, see Working with upstream repositories
(https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRepository in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

