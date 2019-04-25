package Paws::EC2::DeleteFleetSuccessItem;
  use Moose;
  has CurrentFleetState => (is => 'ro', isa => 'Str', request_name => 'currentFleetState', traits => ['NameInRequest']);
  has FleetId => (is => 'ro', isa => 'Str', request_name => 'fleetId', traits => ['NameInRequest']);
  has PreviousFleetState => (is => 'ro', isa => 'Str', request_name => 'previousFleetState', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteFleetSuccessItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::DeleteFleetSuccessItem object:

  $service_obj->Method(Att1 => { CurrentFleetState => $value, ..., PreviousFleetState => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::DeleteFleetSuccessItem object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrentFleetState

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CurrentFleetState => Str

  The current state of the EC2 Fleet.


=head2 FleetId => Str

  The ID of the EC2 Fleet.


=head2 PreviousFleetState => Str

  The previous state of the EC2 Fleet.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
