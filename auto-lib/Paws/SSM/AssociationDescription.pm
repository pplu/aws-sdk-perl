package Paws::SSM::AssociationDescription;
  use Moose;
  has Date => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Paws::SSM::AssociationStatus');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::AssociationDescription

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::AssociationDescription object:

  $service_obj->Method(Att1 => { Date => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::AssociationDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->Date

=head1 ATTRIBUTES

=head2 Date => Str

  The date when the association was made.

=head2 InstanceId => Str

  The ID of the instance.

=head2 Name => Str

  The name of the configuration document.

=head2 Status => Paws::SSM::AssociationStatus

  The association status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

