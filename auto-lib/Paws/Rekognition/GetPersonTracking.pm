
package Paws::Rekognition::GetPersonTracking;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPersonTracking');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::GetPersonTrackingResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::GetPersonTracking - Arguments for method GetPersonTracking on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPersonTracking on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method GetPersonTracking.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPersonTracking.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $GetPersonTrackingResponse = $rekognition->GetPersonTracking(
      JobId      => 'MyJobId',
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      SortBy     => 'INDEX',                # OPTIONAL
    );

    # Results:
    my $JobStatus     = $GetPersonTrackingResponse->JobStatus;
    my $NextToken     = $GetPersonTrackingResponse->NextToken;
    my $Persons       = $GetPersonTrackingResponse->Persons;
    my $StatusMessage = $GetPersonTrackingResponse->StatusMessage;
    my $VideoMetadata = $GetPersonTrackingResponse->VideoMetadata;

    # Returns a L<Paws::Rekognition::GetPersonTrackingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/GetPersonTracking>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The identifier for a job that tracks persons in a video. You get the
C<JobId> from a call to C<StartPersonTracking>.



=head2 MaxResults => Int

Maximum number of results to return per paginated call. The largest
value you can specify is 1000. If you specify a value greater than
1000, a maximum of 1000 results is returned. The default value is 1000.



=head2 NextToken => Str

If the previous response was incomplete (because there are more persons
to retrieve), Amazon Rekognition Video returns a pagination token in
the response. You can use this pagination token to retrieve the next
set of persons.



=head2 SortBy => Str

Sort to use for elements in the C<Persons> array. Use C<TIMESTAMP> to
sort array elements by the time persons are detected. Use C<INDEX> to
sort by the tracked persons. If you sort by C<INDEX>, the array
elements for each person are sorted by detection confidence. The
default sort is by C<TIMESTAMP>.

Valid values are: C<"INDEX">, C<"TIMESTAMP">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPersonTracking in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

