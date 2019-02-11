package Paws::Lightsail::RelationalDatabaseHardware;
  use Moose;
  has CpuCount => (is => 'ro', isa => 'Int', request_name => 'cpuCount', traits => ['NameInRequest']);
  has DiskSizeInGb => (is => 'ro', isa => 'Int', request_name => 'diskSizeInGb', traits => ['NameInRequest']);
  has RamSizeInGb => (is => 'ro', isa => 'Num', request_name => 'ramSizeInGb', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::RelationalDatabaseHardware

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::RelationalDatabaseHardware object:

  $service_obj->Method(Att1 => { CpuCount => $value, ..., RamSizeInGb => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::RelationalDatabaseHardware object:

  $result = $service_obj->Method(...);
  $result->Att1->CpuCount

=head1 DESCRIPTION

Describes the hardware of a database.

=head1 ATTRIBUTES


=head2 CpuCount => Int

  The number of vCPUs for the database.


=head2 DiskSizeInGb => Int

  The size of the disk for the database.


=head2 RamSizeInGb => Num

  The amount of RAM in GB for the database.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

