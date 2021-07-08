
package Paws::ConnectContactLens::ListRealtimeContactAnalysisSegments;
  use Moose;
  has ContactId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRealtimeContactAnalysisSegments');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/realtime-contact-analysis/analysis-segments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectContactLens::ListRealtimeContactAnalysisSegmentsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectContactLens::ListRealtimeContactAnalysisSegments - Arguments for method ListRealtimeContactAnalysisSegments on L<Paws::ConnectContactLens>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRealtimeContactAnalysisSegments on the
L<Amazon Connect Contact Lens|Paws::ConnectContactLens> service. Use the attributes of this class
as arguments to method ListRealtimeContactAnalysisSegments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRealtimeContactAnalysisSegments.

=head1 SYNOPSIS

    my $contact-lens = Paws->service('ConnectContactLens');
    my $ListRealtimeContactAnalysisSegmentsResponse =
      $contact -lens->ListRealtimeContactAnalysisSegments(
      ContactId  => 'MyContactId',
      InstanceId => 'MyInstanceId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListRealtimeContactAnalysisSegmentsResponse->NextToken;
    my $Segments  = $ListRealtimeContactAnalysisSegmentsResponse->Segments;

# Returns a L<Paws::ConnectContactLens::ListRealtimeContactAnalysisSegmentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/contact-lens/ListRealtimeContactAnalysisSegments>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactId => Str

The identifier of the contact.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.



=head2 MaxResults => Int

The maximimum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRealtimeContactAnalysisSegments in L<Paws::ConnectContactLens>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

