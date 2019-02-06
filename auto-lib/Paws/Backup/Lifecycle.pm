package Paws::Backup::Lifecycle;
  use Moose;
  has DeleteAfterDays => (is => 'ro', isa => 'Int');
  has MoveToColdStorageAfterDays => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::Lifecycle

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Backup::Lifecycle object:

  $service_obj->Method(Att1 => { DeleteAfterDays => $value, ..., MoveToColdStorageAfterDays => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Backup::Lifecycle object:

  $result = $service_obj->Method(...);
  $result->Att1->DeleteAfterDays

=head1 DESCRIPTION

Contains an array of C<Transition> objects specifying how long in days
before a recovery point transitions to cold storage or is deleted.

=head1 ATTRIBUTES


=head2 DeleteAfterDays => Int

  Specifies the number of days after creation that a recovery point is
deleted. Must be greater than C<MoveToColdStorageAfterDays>.


=head2 MoveToColdStorageAfterDays => Int

  Specifies the number of days after creation that a recovery point is
moved to cold storage.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

