package Paws::Lightsail::RelationalDatabaseBundle;
  use Moose;
  has BundleId => (is => 'ro', isa => 'Str', request_name => 'bundleId', traits => ['NameInRequest']);
  has CpuCount => (is => 'ro', isa => 'Int', request_name => 'cpuCount', traits => ['NameInRequest']);
  has DiskSizeInGb => (is => 'ro', isa => 'Int', request_name => 'diskSizeInGb', traits => ['NameInRequest']);
  has IsActive => (is => 'ro', isa => 'Bool', request_name => 'isActive', traits => ['NameInRequest']);
  has IsEncrypted => (is => 'ro', isa => 'Bool', request_name => 'isEncrypted', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Price => (is => 'ro', isa => 'Num', request_name => 'price', traits => ['NameInRequest']);
  has RamSizeInGb => (is => 'ro', isa => 'Num', request_name => 'ramSizeInGb', traits => ['NameInRequest']);
  has TransferPerMonthInGb => (is => 'ro', isa => 'Int', request_name => 'transferPerMonthInGb', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::RelationalDatabaseBundle

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::RelationalDatabaseBundle object:

  $service_obj->Method(Att1 => { BundleId => $value, ..., TransferPerMonthInGb => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::RelationalDatabaseBundle object:

  $result = $service_obj->Method(...);
  $result->Att1->BundleId

=head1 DESCRIPTION

Describes a database bundle. A bundle describes the performance
specifications of the database.

=head1 ATTRIBUTES


=head2 BundleId => Str

  The ID for the database bundle.


=head2 CpuCount => Int

  The number of virtual CPUs (vCPUs) for the database bundle.


=head2 DiskSizeInGb => Int

  The size of the disk for the database bundle.


=head2 IsActive => Bool

  A Boolean value indicating whether the database bundle is active.


=head2 IsEncrypted => Bool

  A Boolean value indicating whether the database bundle is encrypted.


=head2 Name => Str

  The name for the database bundle.


=head2 Price => Num

  The cost of the database bundle in US currency.


=head2 RamSizeInGb => Num

  The amount of RAM in GB (for example, C<2.0>) for the database bundle.


=head2 TransferPerMonthInGb => Int

  The data transfer rate per month in GB for the database bundle.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

