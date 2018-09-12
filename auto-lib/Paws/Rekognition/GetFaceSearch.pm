
package Paws::Rekognition::GetFaceSearch;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFaceSearch');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::GetFaceSearchResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::GetFaceSearch - Arguments for method GetFaceSearch on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFaceSearch on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method GetFaceSearch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFaceSearch.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $GetFaceSearchResponse = $rekognition->GetFaceSearch(
      JobId      => 'MyJobId',
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      SortBy     => 'INDEX',                # OPTIONAL
    );

    # Results:
    my $JobStatus     = $GetFaceSearchResponse->JobStatus;
    my $NextToken     = $GetFaceSearchResponse->NextToken;
    my $Persons       = $GetFaceSearchResponse->Persons;
    my $StatusMessage = $GetFaceSearchResponse->StatusMessage;
    my $VideoMetadata = $GetFaceSearchResponse->VideoMetadata;

    # Returns a L<Paws::Rekognition::GetFaceSearchResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/GetFaceSearch>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The job identifer for the search request. You get the job identifier
from an initial call to C<StartFaceSearch>.



=head2 MaxResults => Int

Maximum number of results to return per paginated call. The largest
value you can specify is 1000. If you specify a value greater than
1000, a maximum of 1000 results is returned. The default value is 1000.



=head2 NextToken => Str

If the previous response was incomplete (because there is more search
results to retrieve), Amazon Rekognition Video returns a pagination
token in the response. You can use this pagination token to retrieve
the next set of search results.



=head2 SortBy => Str

Sort to use for grouping faces in the response. Use C<TIMESTAMP> to
group faces by the time that they are recognized. Use C<INDEX> to sort
by recognized faces.

Valid values are: C<"INDEX">, C<"TIMESTAMP">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFaceSearch in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

