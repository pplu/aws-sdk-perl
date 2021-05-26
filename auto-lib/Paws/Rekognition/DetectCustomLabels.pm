
package Paws::Rekognition::DetectCustomLabels;
  use Moose;
  has Image => (is => 'ro', isa => 'Paws::Rekognition::Image', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has MinConfidence => (is => 'ro', isa => 'Num');
  has ProjectVersionArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetectCustomLabels');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::DetectCustomLabelsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DetectCustomLabels - Arguments for method DetectCustomLabels on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetectCustomLabels on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method DetectCustomLabels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetectCustomLabels.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $DetectCustomLabelsResponse = $rekognition->DetectCustomLabels(
      Image => {
        Bytes    => 'BlobImageBlob',    # min: 1, max: 5242880; OPTIONAL
        S3Object => {
          Bucket  => 'MyS3Bucket',           # min: 3, max: 255; OPTIONAL
          Name    => 'MyS3ObjectName',       # min: 1, max: 1024; OPTIONAL
          Version => 'MyS3ObjectVersion',    # min: 1, max: 1024; OPTIONAL
        },    # OPTIONAL
      },
      ProjectVersionArn => 'MyProjectVersionArn',
      MaxResults        => 1,                       # OPTIONAL
      MinConfidence     => 1.0,                     # OPTIONAL
    );

    # Results:
    my $CustomLabels = $DetectCustomLabelsResponse->CustomLabels;

    # Returns a L<Paws::Rekognition::DetectCustomLabelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/DetectCustomLabels>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Image => L<Paws::Rekognition::Image>





=head2 MaxResults => Int

Maximum number of results you want the service to return in the
response. The service returns the specified number of highest
confidence labels ranked from highest confidence to lowest.



=head2 MinConfidence => Num

Specifies the minimum confidence level for the labels to return. Amazon
Rekognition doesn't return any labels with a confidence lower than this
specified value. If you specify a value of 0, all labels are return,
regardless of the default thresholds that the model version applies.



=head2 B<REQUIRED> ProjectVersionArn => Str

The ARN of the model version that you want to use.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetectCustomLabels in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

