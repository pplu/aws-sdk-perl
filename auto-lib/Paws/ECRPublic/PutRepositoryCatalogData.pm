
package Paws::ECRPublic::PutRepositoryCatalogData;
  use Moose;
  has CatalogData => (is => 'ro', isa => 'Paws::ECRPublic::RepositoryCatalogDataInput', traits => ['NameInRequest'], request_name => 'catalogData' , required => 1);
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRepositoryCatalogData');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECRPublic::PutRepositoryCatalogDataResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECRPublic::PutRepositoryCatalogData - Arguments for method PutRepositoryCatalogData on L<Paws::ECRPublic>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRepositoryCatalogData on the
L<Amazon Elastic Container Registry Public|Paws::ECRPublic> service. Use the attributes of this class
as arguments to method PutRepositoryCatalogData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRepositoryCatalogData.

=head1 SYNOPSIS

    my $api.ecr-public = Paws->service('ECRPublic');
    my $PutRepositoryCatalogDataResponse =
      $api . ecr-public->PutRepositoryCatalogData(
      CatalogData => {
        AboutText     => 'MyAboutText',    # max: 10240; OPTIONAL
        Architectures => [
          'MyArchitecture', ...            # min: 1, max: 50
        ],                                 # max: 50; OPTIONAL
        Description      => 'MyRepositoryDescription',   # max: 1024; OPTIONAL
        LogoImageBlob    => 'BlobLogoImageBlob',         # max: 512000; OPTIONAL
        OperatingSystems => [
          'MyOperatingSystem', ...                       # min: 1, max: 50
        ],                                               # max: 50; OPTIONAL
        UsageText => 'MyUsageText',                      # max: 10240; OPTIONAL
      },
      RepositoryName => 'MyRepositoryName',
      RegistryId     => 'MyRegistryId',                  # OPTIONAL
      );

    # Results:
    my $CatalogData = $PutRepositoryCatalogDataResponse->CatalogData;

    # Returns a L<Paws::ECRPublic::PutRepositoryCatalogDataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr-public/PutRepositoryCatalogData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CatalogData => L<Paws::ECRPublic::RepositoryCatalogDataInput>

An object containing the catalog data for a repository. This data is
publicly visible in the Amazon ECR Public Gallery.



=head2 RegistryId => Str

The AWS account ID associated with the public registry the repository
is in. If you do not specify a registry, the default public registry is
assumed.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository to create or update the catalog data for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRepositoryCatalogData in L<Paws::ECRPublic>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

