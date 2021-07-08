
package Paws::SageMaker::ListImages;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has LastModifiedTimeAfter => (is => 'ro', isa => 'Str');
  has LastModifiedTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListImages');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListImagesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListImages - Arguments for method ListImages on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListImages on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListImages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListImages.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListImagesResponse = $api . sagemaker->ListImages(
      CreationTimeAfter      => '1970-01-01T01:00:00',    # OPTIONAL
      CreationTimeBefore     => '1970-01-01T01:00:00',    # OPTIONAL
      LastModifiedTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      LastModifiedTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults             => 1,                        # OPTIONAL
      NameContains           => 'MyImageNameContains',    # OPTIONAL
      NextToken              => 'MyNextToken',            # OPTIONAL
      SortBy                 => 'CREATION_TIME',          # OPTIONAL
      SortOrder              => 'ASCENDING',              # OPTIONAL
    );

    # Results:
    my $Images    = $ListImagesResponse->Images;
    my $NextToken = $ListImagesResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListImagesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListImages>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

A filter that returns only images created on or after the specified
time.



=head2 CreationTimeBefore => Str

A filter that returns only images created on or before the specified
time.



=head2 LastModifiedTimeAfter => Str

A filter that returns only images modified on or after the specified
time.



=head2 LastModifiedTimeBefore => Str

A filter that returns only images modified on or before the specified
time.



=head2 MaxResults => Int

The maximum number of images to return in the response. The default
value is 10.



=head2 NameContains => Str

A filter that returns only images whose name contains the specified
string.



=head2 NextToken => Str

If the previous call to C<ListImages> didn't return the full set of
images, the call returns a token for getting the next set of images.



=head2 SortBy => Str

The property used to sort results. The default value is
C<CREATION_TIME>.

Valid values are: C<"CREATION_TIME">, C<"LAST_MODIFIED_TIME">, C<"IMAGE_NAME">

=head2 SortOrder => Str

The sort order. The default value is C<DESCENDING>.

Valid values are: C<"ASCENDING">, C<"DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListImages in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

