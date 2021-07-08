package Paws::EC2::CapacityReservationGroup;
  use Moose;
  has GroupArn => (is => 'ro', isa => 'Str', request_name => 'groupArn', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CapacityReservationGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CapacityReservationGroup object:

  $service_obj->Method(Att1 => { GroupArn => $value, ..., OwnerId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CapacityReservationGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->GroupArn

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 GroupArn => Str

The ARN of the resource group.


=head2 OwnerId => Str

The ID of the account that owns the resource group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
