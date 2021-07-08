
package Paws::IVS::ListTagsForResource;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tags/{resourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVS::ListTagsForResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::IVS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<Amazon Interactive Video Service|Paws::IVS> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $ivs = Paws->service('IVS');
    my $ListTagsForResourceResponse = $ivs->ListTagsForResource(
      ResourceArn => 'MyResourceArn',
      MaxResults  => 1,                 # OPTIONAL
      NextToken   => 'MyString',        # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTagsForResourceResponse->NextToken;
    my $Tags      = $ListTagsForResourceResponse->Tags;

    # Returns a L<Paws::IVS::ListTagsForResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivs/ListTagsForResource>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Maximum number of tags to return. Default: 50.



=head2 NextToken => Str

The first tag to retrieve. This is used for pagination; see the
C<nextToken> response field.



=head2 B<REQUIRED> ResourceArn => Str

The ARN of the resource to be retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::IVS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

