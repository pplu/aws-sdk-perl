# Generated from json/callargs_class.tt

package Paws::Rekognition::DetectModerationLabels;
  use Moo;
  use Types::Standard qw/Str Num/;
  use Paws::Rekognition::Types qw/Rekognition_Image/;
  has Image => (is => 'ro', isa => Rekognition_Image, required => 1, predicate => 1);
  has MinConfidence => (is => 'ro', isa => Num, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DetectModerationLabels');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Rekognition::DetectModerationLabelsResponse');
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

Paws::Rekognition::DetectModerationLabels - Arguments for method DetectModerationLabels on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetectModerationLabels on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method DetectModerationLabels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetectModerationLabels.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $DetectModerationLabelsResponse = $rekognition->DetectModerationLabels(
      Image => {
        Bytes    => 'BlobImageBlob',    # min: 1, max: 5242880; OPTIONAL
        S3Object => {
          Bucket  => 'MyS3Bucket',           # min: 3, max: 255; OPTIONAL
          Name    => 'MyS3ObjectName',       # min: 1, max: 1024; OPTIONAL
          Version => 'MyS3ObjectVersion',    # min: 1, max: 1024; OPTIONAL
        },    # OPTIONAL
      },
      MinConfidence => 1.0,    # OPTIONAL
    );

    # Results:
    my $ModerationLabels = $DetectModerationLabelsResponse->ModerationLabels;
    my $ModerationModelVersion =
      $DetectModerationLabelsResponse->ModerationModelVersion;

    # Returns a L<Paws::Rekognition::DetectModerationLabelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/DetectModerationLabels>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Image => Rekognition_Image

The input image as base64-encoded bytes or an S3 object. If you use the
AWS CLI to call Amazon Rekognition operations, passing base64-encoded
image bytes is not supported.

If you are using an AWS SDK to call Amazon Rekognition, you might not
need to base64-encode image bytes passed using the C<Bytes> field. For
more information, see Images in the Amazon Rekognition developer guide.



=head2 MinConfidence => Num

Specifies the minimum confidence level for the labels to return. Amazon
Rekognition doesn't return any labels with a confidence level lower
than this specified value.

If you don't specify C<MinConfidence>, the operation returns labels
with confidence values greater than or equal to 50 percent.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetectModerationLabels in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

