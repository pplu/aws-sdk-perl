
package Paws::ImageBuilder::ListImages;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::Filter]', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Owner => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'owner');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListImages');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListImages');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::ListImagesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListImages - Arguments for method ListImages on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListImages on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method ListImages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListImages.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $ListImagesResponse = $imagebuilder->ListImages(
      Filters => [
        {
          Name   => 'MyFilterName',              # OPTIONAL
          Values => [ 'MyFilterValue', ... ],    # min: 1, max: 10; OPTIONAL
        },
        ...
      ],                                         # OPTIONAL
      MaxResults => 1,                           # OPTIONAL
      NextToken  => 'MyNonEmptyString',          # OPTIONAL
      Owner      => 'Self',                      # OPTIONAL
    );

    # Results:
    my $ImageVersionList = $ListImagesResponse->ImageVersionList;
    my $NextToken        = $ListImagesResponse->NextToken;
    my $RequestId        = $ListImagesResponse->RequestId;

    # Returns a L<Paws::ImageBuilder::ListImagesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/ListImages>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::ImageBuilder::Filter>]

The filters.



=head2 MaxResults => Int

The maximum items to return in a request.



=head2 NextToken => Str

A token to specify where to start paginating. This is the NextToken
from a previously truncated response.



=head2 Owner => Str

The owner defines which images you want to list. By default, this
request will only show images owned by your account. You can use this
field to specify if you want to view images owned by yourself, by
Amazon, or those images that have been shared with you by other
customers.

Valid values are: C<"Self">, C<"Shared">, C<"Amazon">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListImages in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

