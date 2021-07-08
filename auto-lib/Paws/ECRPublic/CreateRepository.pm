
package Paws::ECRPublic::CreateRepository;
  use Moose;
  has CatalogData => (is => 'ro', isa => 'Paws::ECRPublic::RepositoryCatalogDataInput', traits => ['NameInRequest'], request_name => 'catalogData' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ECRPublic::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRepository');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECRPublic::CreateRepositoryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECRPublic::CreateRepository - Arguments for method CreateRepository on L<Paws::ECRPublic>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRepository on the
L<Amazon Elastic Container Registry Public|Paws::ECRPublic> service. Use the attributes of this class
as arguments to method CreateRepository.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRepository.

=head1 SYNOPSIS

    my $api.ecr-public = Paws->service('ECRPublic');
    my $CreateRepositoryResponse = $api . ecr-public->CreateRepository(
      RepositoryName => 'MyRepositoryName',
      CatalogData    => {
        AboutText     => 'MyAboutText',    # max: 10240; OPTIONAL
        Architectures => [
          'MyArchitecture', ...            # min: 1, max: 50
        ],    # max: 50; OPTIONAL
        Description      => 'MyRepositoryDescription',   # max: 1024; OPTIONAL
        LogoImageBlob    => 'BlobLogoImageBlob',         # max: 512000; OPTIONAL
        OperatingSystems => [
          'MyOperatingSystem', ...                       # min: 1, max: 50
        ],    # max: 50; OPTIONAL
        UsageText => 'MyUsageText',    # max: 10240; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $CatalogData = $CreateRepositoryResponse->CatalogData;
    my $Repository  = $CreateRepositoryResponse->Repository;

    # Returns a L<Paws::ECRPublic::CreateRepositoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr-public/CreateRepository>

=head1 ATTRIBUTES


=head2 CatalogData => L<Paws::ECRPublic::RepositoryCatalogDataInput>

The details about the repository that are publicly visible in the
Amazon ECR Public Gallery.



=head2 B<REQUIRED> RepositoryName => Str

The name to use for the repository. This appears publicly in the Amazon
ECR Public Gallery. The repository name may be specified on its own
(such as C<nginx-web-app>) or it can be prepended with a namespace to
group the repository into a category (such as
C<project-a/nginx-web-app>).



=head2 Tags => ArrayRef[L<Paws::ECRPublic::Tag>]

The metadata that you apply to the repository to help you categorize
and organize them. Each tag consists of a key and an optional value,
both of which you define. Tag keys can have a maximum character length
of 128 characters, and tag values can have a maximum length of 256
characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRepository in L<Paws::ECRPublic>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

