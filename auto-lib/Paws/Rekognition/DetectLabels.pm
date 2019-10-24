# Generated from json/callargs_class.tt

package Paws::Rekognition::DetectLabels;
  use Moo;
  use Types::Standard qw/Str Int Num/;
  use Paws::Rekognition::Types qw/Rekognition_Image/;
  has Image => (is => 'ro', isa => Rekognition_Image, required => 1, predicate => 1);
  has MaxLabels => (is => 'ro', isa => Int, predicate => 1);
  has MinConfidence => (is => 'ro', isa => Num, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DetectLabels');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Rekognition::DetectLabelsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MinConfidence' => {
                                    'type' => 'Num'
                                  },
               'Image' => {
                            'class' => 'Paws::Rekognition::Image',
                            'type' => 'Rekognition_Image'
                          },
               'MaxLabels' => {
                                'type' => 'Int'
                              }
             },
  'IsRequired' => {
                    'Image' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DetectLabels - Arguments for method DetectLabels on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetectLabels on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method DetectLabels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetectLabels.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    # To detect labels
    # This operation detects labels in the supplied image
    my $DetectLabelsResponse = $rekognition->DetectLabels(
      'Image' => {
        'S3Object' => {
          'Bucket' => 'mybucket',
          'Name'   => 'myphoto'
        }
      },
      'MaxLabels'     => 123,
      'MinConfidence' => 70
    );

    # Results:
    my $Labels = $DetectLabelsResponse->Labels;

    # Returns a L<Paws::Rekognition::DetectLabelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/DetectLabels>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Image => Rekognition_Image

The input image as base64-encoded bytes or an S3 object. If you use the
AWS CLI to call Amazon Rekognition operations, passing image bytes is
not supported. Images stored in an S3 Bucket do not need to be
base64-encoded.

If you are using an AWS SDK to call Amazon Rekognition, you might not
need to base64-encode image bytes passed using the C<Bytes> field. For
more information, see Images in the Amazon Rekognition developer guide.



=head2 MaxLabels => Int

Maximum number of labels you want the service to return in the
response. The service returns the specified number of highest
confidence labels.



=head2 MinConfidence => Num

Specifies the minimum confidence level for the labels to return. Amazon
Rekognition doesn't return any labels with confidence lower than this
specified value.

If C<MinConfidence> is not specified, the operation returns labels with
a confidence values greater than or equal to 55 percent.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetectLabels in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

