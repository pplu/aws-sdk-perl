
package Paws::ECR::CreateRepository;
  use Moose;
  has ImageScanningConfiguration => (is => 'ro', isa => 'Paws::ECR::ImageScanningConfiguration', traits => ['NameInRequest'], request_name => 'imageScanningConfiguration' );
  has ImageTagMutability => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageTagMutability' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ECR::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRepository');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::CreateRepositoryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::CreateRepository - Arguments for method CreateRepository on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRepository on the
L<Amazon EC2 Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method CreateRepository.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRepository.

=head1 SYNOPSIS

    my $api.ecr = Paws->service('ECR');
   # To create a new repository
   # This example creates a repository called nginx-web-app inside the project-a
   # namespace in the default registry for an account.
    my $CreateRepositoryResponse = $api
      . ecr->CreateRepository( 'RepositoryName' => 'project-a/nginx-web-app' );

    # Results:
    my $repository = $CreateRepositoryResponse->repository;

    # Returns a L<Paws::ECR::CreateRepositoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr/CreateRepository>

=head1 ATTRIBUTES


=head2 ImageScanningConfiguration => L<Paws::ECR::ImageScanningConfiguration>

The image scanning configuration for the repository. This setting
determines whether images are scanned for known vulnerabilities after
being pushed to the repository.



=head2 ImageTagMutability => Str

The tag mutability setting for the repository. If this parameter is
omitted, the default setting of C<MUTABLE> will be used which will
allow image tags to be overwritten. If C<IMMUTABLE> is specified, all
image tags within the repository will be immutable which will prevent
them from being overwritten.

Valid values are: C<"MUTABLE">, C<"IMMUTABLE">

=head2 B<REQUIRED> RepositoryName => Str

The name to use for the repository. The repository name may be
specified on its own (such as C<nginx-web-app>) or it can be prepended
with a namespace to group the repository into a category (such as
C<project-a/nginx-web-app>).



=head2 Tags => ArrayRef[L<Paws::ECR::Tag>]

The metadata that you apply to the repository to help you categorize
and organize them. Each tag consists of a key and an optional value,
both of which you define. Tag keys can have a maximum character length
of 128 characters, and tag values can have a maximum length of 256
characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRepository in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

