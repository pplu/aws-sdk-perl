
package Paws::ECR::CreateRepository;
  use Moose;
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRepository');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::CreateRepositoryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::CreateRepository - Arguments for method CreateRepository on Paws::ECR

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRepository on the 
Amazon EC2 Container Registry service. Use the attributes of this class
as arguments to method CreateRepository.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRepository.

As an example:

  $service_obj->CreateRepository(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> RepositoryName => Str

The name to use for the repository. The repository name may be
specified on its own (such as C<nginx-web-app>) or it can be prepended
with a namespace to group the repository into a category (such as
C<project-a/nginx-web-app>).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRepository in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

