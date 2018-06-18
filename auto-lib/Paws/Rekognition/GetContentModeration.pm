
package Paws::Rekognition::GetContentModeration;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetContentModeration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::GetContentModerationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::GetContentModeration - Arguments for method GetContentModeration on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetContentModeration on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method GetContentModeration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetContentModeration.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $GetContentModerationResponse = $rekognition->GetContentModeration(
      JobId      => 'MyJobId',
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      SortBy     => 'NAME',                 # OPTIONAL
    );

    # Results:
    my $JobStatus        = $GetContentModerationResponse->JobStatus;
    my $ModerationLabels = $GetContentModerationResponse->ModerationLabels;
    my $NextToken        = $GetContentModerationResponse->NextToken;
    my $StatusMessage    = $GetContentModerationResponse->StatusMessage;
    my $VideoMetadata    = $GetContentModerationResponse->VideoMetadata;

    # Returns a L<Paws::Rekognition::GetContentModerationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/GetContentModeration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The identifier for the content moderation job. Use C<JobId> to identify
the job in a subsequent call to C<GetContentModeration>.



=head2 MaxResults => Int

Maximum number of results to return per paginated call. The largest
value you can specify is 1000. If you specify a value greater than
1000, a maximum of 1000 results is returned. The default value is 1000.



=head2 NextToken => Str

If the previous response was incomplete (because there is more data to
retrieve), Amazon Rekognition returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
content moderation labels.



=head2 SortBy => Str

Sort to use for elements in the C<ModerationLabelDetections> array. Use
C<TIMESTAMP> to sort array elements by the time labels are detected.
Use C<NAME> to alphabetically group elements for a label together.
Within each label group, the array element are sorted by detection
confidence. The default sort is by C<TIMESTAMP>.

Valid values are: C<"NAME">, C<"TIMESTAMP">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetContentModeration in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

