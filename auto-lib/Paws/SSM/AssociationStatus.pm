package Paws::SSM::AssociationStatus;
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Str');
  has Date => (is => 'ro', isa => 'Str', required => 1);
  has Message => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::AssociationStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::AssociationStatus object:

  $service_obj->Method(Att1 => { AdditionalInfo => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::AssociationStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalInfo

=head1 DESCRIPTION

Describes an association status.

=head1 ATTRIBUTES


=head2 AdditionalInfo => Str

  A user-defined string.


=head2 B<REQUIRED> Date => Str

  The date when the status changed.


=head2 B<REQUIRED> Message => Str

  The reason for the status.


=head2 B<REQUIRED> Name => Str

  The status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

