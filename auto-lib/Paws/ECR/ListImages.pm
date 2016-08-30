
package Paws::ECR::ListImages;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::ECR::ListImagesFilter', traits => ['NameInRequest'], request_name => 'filter' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListImages');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::ListImagesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::ListImages - Arguments for method ListImages on Paws::ECR

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListImages on the 
Amazon EC2 Container Registry service. Use the attributes of this class
as arguments to method ListImages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListImages.

As an example:

  $service_obj->ListImages(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Filter => L<Paws::ECR::ListImagesFilter>





=head2 MaxResults => Int

The maximum number of image results returned by C<ListImages> in
paginated output. When this parameter is used, C<ListImages> only
returns C<maxResults> results in a single page along with a
C<nextToken> response element. The remaining results of the initial
request can be seen by sending another C<ListImages> request with the
returned C<nextToken> value. This value can be between 1 and 100. If
this parameter is not used, then C<ListImages> returns up to 100
results and a C<nextToken> value, if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated C<ListImages>
request where C<maxResults> was used and the results exceeded the value
of that parameter. Pagination continues from the end of the previous
results that returned the C<nextToken> value. This value is C<null>
when there are no more results to return.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.



=head2 RegistryId => Str

The AWS account ID associated with the registry that contains the
repository to list images in. If you do not specify a registry, the
default registry is assumed.



=head2 B<REQUIRED> RepositoryName => Str

The repository whose image IDs are to be listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListImages in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

