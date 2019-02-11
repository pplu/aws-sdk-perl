package Paws::EC2::CancelSpotFleetRequestsSuccessItem;
  use Moose;
  has CurrentSpotFleetRequestState => (is => 'ro', isa => 'Str', request_name => 'currentSpotFleetRequestState', traits => ['NameInRequest']);
  has PreviousSpotFleetRequestState => (is => 'ro', isa => 'Str', request_name => 'previousSpotFleetRequestState', traits => ['NameInRequest']);
  has SpotFleetRequestId => (is => 'ro', isa => 'Str', request_name => 'spotFleetRequestId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CancelSpotFleetRequestsSuccessItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CancelSpotFleetRequestsSuccessItem object:

  $service_obj->Method(Att1 => { CurrentSpotFleetRequestState => $value, ..., SpotFleetRequestId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CancelSpotFleetRequestsSuccessItem object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrentSpotFleetRequestState

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CurrentSpotFleetRequestState => Str

  The current state of the Spot Fleet request.


=head2 PreviousSpotFleetRequestState => Str

  The previous state of the Spot Fleet request.


=head2 SpotFleetRequestId => Str

  The ID of the Spot Fleet request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
