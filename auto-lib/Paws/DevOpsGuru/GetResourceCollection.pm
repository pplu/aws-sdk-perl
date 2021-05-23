
package Paws::DevOpsGuru::GetResourceCollection;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has ResourceCollectionType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceCollectionType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourceCollection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/resource-collections/{ResourceCollectionType}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DevOpsGuru::GetResourceCollectionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::GetResourceCollection - Arguments for method GetResourceCollection on L<Paws::DevOpsGuru>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourceCollection on the
L<Amazon DevOps Guru|Paws::DevOpsGuru> service. Use the attributes of this class
as arguments to method GetResourceCollection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourceCollection.

=head1 SYNOPSIS

    my $devops-guru = Paws->service('DevOpsGuru');
    my $GetResourceCollectionResponse = $devops -guru->GetResourceCollection(
      ResourceCollectionType => 'AWS_CLOUD_FORMATION',
      NextToken              => 'MyUuidNextToken',       # OPTIONAL
    );

    # Results:
    my $NextToken          = $GetResourceCollectionResponse->NextToken;
    my $ResourceCollection = $GetResourceCollectionResponse->ResourceCollection;

    # Returns a L<Paws::DevOpsGuru::GetResourceCollectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru/GetResourceCollection>

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.



=head2 B<REQUIRED> ResourceCollectionType => Str

The type of AWS resource collections to return. The one valid value is
C<CLOUD_FORMATION> for AWS CloudFormation stacks.

Valid values are: C<"AWS_CLOUD_FORMATION">, C<"AWS_SERVICE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourceCollection in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

