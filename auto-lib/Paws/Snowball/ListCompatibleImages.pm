
package Paws::Snowball::ListCompatibleImages;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCompatibleImages');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Snowball::ListCompatibleImagesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::ListCompatibleImages - Arguments for method ListCompatibleImages on L<Paws::Snowball>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCompatibleImages on the
L<Amazon ImportE<sol>Export Snowball|Paws::Snowball> service. Use the attributes of this class
as arguments to method ListCompatibleImages.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCompatibleImages.

=head1 SYNOPSIS

    my $snowball = Paws->service('Snowball');
    my $ListCompatibleImagesResult = $snowball->ListCompatibleImages(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $CompatibleImages = $ListCompatibleImagesResult->CompatibleImages;
    my $NextToken        = $ListCompatibleImagesResult->NextToken;

    # Returns a L<Paws::Snowball::ListCompatibleImagesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snowball/ListCompatibleImages>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results for the list of compatible images.
Currently, each supported device can store 10 AMIs.



=head2 NextToken => Str

HTTP requests are stateless. To identify what object comes "next" in
the list of compatible images, you can specify a value for C<NextToken>
as the starting point for your list of returned images.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCompatibleImages in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

