
package Paws::NimbleStudio::ListStreamingSessions;
  use Moose;
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'createdBy');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SessionIds => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sessionIds');
  has StudioId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'studioId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStreamingSessions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-08-01/studios/{studioId}/streaming-sessions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NimbleStudio::ListStreamingSessionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NimbleStudio::ListStreamingSessions - Arguments for method ListStreamingSessions on L<Paws::NimbleStudio>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStreamingSessions on the
L<AmazonNimbleStudio|Paws::NimbleStudio> service. Use the attributes of this class
as arguments to method ListStreamingSessions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStreamingSessions.

=head1 SYNOPSIS

    my $nimble = Paws->service('NimbleStudio');
    my $ListStreamingSessionsResponse = $nimble->ListStreamingSessions(
      StudioId   => 'My__string',
      CreatedBy  => 'My__string',    # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
      SessionIds => 'My__string',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListStreamingSessionsResponse->NextToken;
    my $Sessions  = $ListStreamingSessionsResponse->Sessions;

    # Returns a L<Paws::NimbleStudio::ListStreamingSessionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/nimble/ListStreamingSessions>

=head1 ATTRIBUTES


=head2 CreatedBy => Str

The user ID.



=head2 NextToken => Str

The token for the next set of results, or null if there are no more
results.



=head2 SessionIds => Str

A collection of session IDs.



=head2 B<REQUIRED> StudioId => Str

The studio ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStreamingSessions in L<Paws::NimbleStudio>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

