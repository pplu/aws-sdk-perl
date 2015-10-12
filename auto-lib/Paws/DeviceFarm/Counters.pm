package Paws::DeviceFarm::Counters;
  use Moose;
  has errored => (is => 'ro', isa => 'Int');
  has failed => (is => 'ro', isa => 'Int');
  has passed => (is => 'ro', isa => 'Int');
  has skipped => (is => 'ro', isa => 'Int');
  has stopped => (is => 'ro', isa => 'Int');
  has total => (is => 'ro', isa => 'Int');
  has warned => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::Counters

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::Counters object:

  $service_obj->Method(Att1 => { errored => $value, ..., warned => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Counters object:

  $result = $service_obj->Method(...);
  $result->Att1->errored

=head1 ATTRIBUTES

=head2 errored => Int

  The number of errored entities.

=head2 failed => Int

  The number of failed entities.

=head2 passed => Int

  The number of passed entities.

=head2 skipped => Int

  The number of skipped entities.

=head2 stopped => Int

  The number of stopped entities.

=head2 total => Int

  The total number of entities.

=head2 warned => Int

  The number of warned entities.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

