
package Paws::Pinpoint::UpdateJourneyState;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);
  has JourneyId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'journey-id', required => 1);
  has JourneyStateRequest => (is => 'ro', isa => 'Paws::Pinpoint::JourneyStateRequest', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'JourneyStateRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateJourneyState');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/journeys/{journey-id}/state');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::UpdateJourneyStateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateJourneyState - Arguments for method UpdateJourneyState on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateJourneyState on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method UpdateJourneyState.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateJourneyState.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $UpdateJourneyStateResponse = $pinpoint->UpdateJourneyState(
      ApplicationId       => 'My__string',
      JourneyId           => 'My__string',
      JourneyStateRequest => {
        State => 'DRAFT'
        , # values: DRAFT, ACTIVE, COMPLETED, CANCELLED, CLOSED, PAUSED; OPTIONAL
      },

    );

    # Results:
    my $JourneyResponse = $UpdateJourneyStateResponse->JourneyResponse;

    # Returns a L<Paws::Pinpoint::UpdateJourneyStateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/UpdateJourneyState>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application. This identifier is displayed
as the B<Project ID> on the Amazon Pinpoint console.



=head2 B<REQUIRED> JourneyId => Str

The unique identifier for the journey.



=head2 B<REQUIRED> JourneyStateRequest => L<Paws::Pinpoint::JourneyStateRequest>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateJourneyState in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

