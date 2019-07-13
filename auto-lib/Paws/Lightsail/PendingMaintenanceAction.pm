package Paws::Lightsail::PendingMaintenanceAction;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', request_name => 'action', traits => ['NameInRequest']);
  has CurrentApplyDate => (is => 'ro', isa => 'Str', request_name => 'currentApplyDate', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::PendingMaintenanceAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::PendingMaintenanceAction object:

  $service_obj->Method(Att1 => { Action => $value, ..., Description => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::PendingMaintenanceAction object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Describes a pending database maintenance action.

=head1 ATTRIBUTES


=head2 Action => Str

  The type of pending database maintenance action.


=head2 CurrentApplyDate => Str

  The effective date of the pending database maintenance action.


=head2 Description => Str

  Additional detail about the pending database maintenance action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

