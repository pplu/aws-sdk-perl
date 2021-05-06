
package Paws::AppStream::DescribeImages;
  use Moose;
  has Arns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has Names => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeImages');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::DescribeImagesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeImages - Arguments for method DescribeImages on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeImages on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method DescribeImages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeImages.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $DescribeImagesResult = $appstream2->DescribeImages(
      Arns       => [ 'MyArn', ... ],    # OPTIONAL
      MaxResults => 1,                   # OPTIONAL
      Names      => [
        'MyString', ...                  # min: 1
      ],                                 # OPTIONAL
      NextToken => 'MyString',           # OPTIONAL
      Type      => 'PUBLIC',             # OPTIONAL
    );

    # Results:
    my $Images    = $DescribeImagesResult->Images;
    my $NextToken = $DescribeImagesResult->NextToken;

    # Returns a L<Paws::AppStream::DescribeImagesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/DescribeImages>

=head1 ATTRIBUTES


=head2 Arns => ArrayRef[Str|Undef]

The ARNs of the public, private, and shared images to describe.



=head2 MaxResults => Int

The maximum size of each page of results.



=head2 Names => ArrayRef[Str|Undef]

The names of the public or private images to describe.



=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.



=head2 Type => Str

The type of image (public, private, or shared) to describe.

Valid values are: C<"PUBLIC">, C<"PRIVATE">, C<"SHARED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeImages in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

