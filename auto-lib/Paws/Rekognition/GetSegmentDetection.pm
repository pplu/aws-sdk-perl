
package Paws::Rekognition::GetSegmentDetection;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSegmentDetection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::GetSegmentDetectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::GetSegmentDetection - Arguments for method GetSegmentDetection on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSegmentDetection on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method GetSegmentDetection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSegmentDetection.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $GetSegmentDetectionResponse = $rekognition->GetSegmentDetection(
      JobId      => 'MyJobId',
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $AudioMetadata = $GetSegmentDetectionResponse->AudioMetadata;
    my $JobStatus     = $GetSegmentDetectionResponse->JobStatus;
    my $NextToken     = $GetSegmentDetectionResponse->NextToken;
    my $Segments      = $GetSegmentDetectionResponse->Segments;
    my $SelectedSegmentTypes =
      $GetSegmentDetectionResponse->SelectedSegmentTypes;
    my $StatusMessage = $GetSegmentDetectionResponse->StatusMessage;
    my $VideoMetadata = $GetSegmentDetectionResponse->VideoMetadata;

    # Returns a L<Paws::Rekognition::GetSegmentDetectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/GetSegmentDetection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

Job identifier for the text detection operation for which you want
results returned. You get the job identifer from an initial call to
C<StartSegmentDetection>.



=head2 MaxResults => Int

Maximum number of results to return per paginated call. The largest
value you can specify is 1000.



=head2 NextToken => Str

If the response is truncated, Amazon Rekognition Video returns this
token that you can use in the subsequent request to retrieve the next
set of text.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSegmentDetection in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

