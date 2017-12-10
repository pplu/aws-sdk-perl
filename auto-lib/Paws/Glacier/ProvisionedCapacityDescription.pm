package Paws::Glacier::ProvisionedCapacityDescription;
  use Moose;
  has CapacityId => (is => 'ro', isa => 'Str');
  has ExpirationDate => (is => 'ro', isa => 'Str');
  has StartDate => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::ProvisionedCapacityDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glacier::ProvisionedCapacityDescription object:

  $service_obj->Method(Att1 => { CapacityId => $value, ..., StartDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glacier::ProvisionedCapacityDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->CapacityId

=head1 DESCRIPTION

The definition for a provisioned capacity unit.

=head1 ATTRIBUTES


=head2 CapacityId => Str

  The ID that identifies the provisioned capacity unit.


=head2 ExpirationDate => Str

  The date that the provisioned capacity unit expires, in Universal
Coordinated Time (UTC).


=head2 StartDate => Str

  The date that the provisioned capacity unit was purchased, in Universal
Coordinated Time (UTC).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

