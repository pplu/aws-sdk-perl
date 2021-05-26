
package Paws::ConnectParticipant::GetTranscript;
  use Moose;
  has ConnectionToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Bearer', required => 1);
  has ContactId => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ScanDirection => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');
  has StartPosition => (is => 'ro', isa => 'Paws::ConnectParticipant::StartPosition');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTranscript');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/participant/transcript');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ConnectParticipant::GetTranscriptResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectParticipant::GetTranscript - Arguments for method GetTranscript on L<Paws::ConnectParticipant>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTranscript on the
L<Amazon Connect Participant Service|Paws::ConnectParticipant> service. Use the attributes of this class
as arguments to method GetTranscript.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTranscript.

=head1 SYNOPSIS

    my $participant.connect = Paws->service('ConnectParticipant');
    my $GetTranscriptResponse = $participant . connect->GetTranscript(
      ConnectionToken => 'MyParticipantToken',
      ContactId       => 'MyContactId',          # OPTIONAL
      MaxResults      => 1,                      # OPTIONAL
      NextToken       => 'MyNextToken',          # OPTIONAL
      ScanDirection   => 'FORWARD',              # OPTIONAL
      SortOrder       => 'DESCENDING',           # OPTIONAL
      StartPosition   => {
        AbsoluteTime => 'MyInstant',             # min: 1, max: 100; OPTIONAL
        Id           => 'MyChatItemId',          # min: 1, max: 256; OPTIONAL
        MostRecent   => 1,                       # max: 100; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $InitialContactId = $GetTranscriptResponse->InitialContactId;
    my $NextToken        = $GetTranscriptResponse->NextToken;
    my $Transcript       = $GetTranscriptResponse->Transcript;

    # Returns a L<Paws::ConnectParticipant::GetTranscriptResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/participant.connect/GetTranscript>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionToken => Str

The authentication token associated with the participant's connection.



=head2 ContactId => Str

The contactId from the current contact chain for which transcript is
needed.



=head2 MaxResults => Int

The maximum number of results to return in the page. Default: 10.



=head2 NextToken => Str

The pagination token. Use the value returned previously in the next
subsequent request to retrieve the next set of results.



=head2 ScanDirection => Str

The direction from StartPosition from which to retrieve message.
Default: BACKWARD when no StartPosition is provided, FORWARD with
StartPosition.

Valid values are: C<"FORWARD">, C<"BACKWARD">

=head2 SortOrder => Str

The sort order for the records. Default: DESCENDING.

Valid values are: C<"DESCENDING">, C<"ASCENDING">

=head2 StartPosition => L<Paws::ConnectParticipant::StartPosition>

A filtering option for where to start.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTranscript in L<Paws::ConnectParticipant>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

