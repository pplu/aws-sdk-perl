package Paws::Lightsail::Bundle;
  use Moose;
  has BundleId => (is => 'ro', isa => 'Str', xmlname => 'bundleId', request_name => 'bundleId', traits => ['Unwrapped','NameInRequest']);
  has CpuCount => (is => 'ro', isa => 'Int', xmlname => 'cpuCount', request_name => 'cpuCount', traits => ['Unwrapped','NameInRequest']);
  has DiskSizeInGb => (is => 'ro', isa => 'Int', xmlname => 'diskSizeInGb', request_name => 'diskSizeInGb', traits => ['Unwrapped','NameInRequest']);
  has InstanceType => (is => 'ro', isa => 'Str', xmlname => 'instanceType', request_name => 'instanceType', traits => ['Unwrapped','NameInRequest']);
  has IsActive => (is => 'ro', isa => 'Bool', xmlname => 'isActive', request_name => 'isActive', traits => ['Unwrapped','NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', xmlname => 'name', request_name => 'name', traits => ['Unwrapped','NameInRequest']);
  has Power => (is => 'ro', isa => 'Int', xmlname => 'power', request_name => 'power', traits => ['Unwrapped','NameInRequest']);
  has Price => (is => 'ro', isa => 'Num', xmlname => 'price', request_name => 'price', traits => ['Unwrapped','NameInRequest']);
  has RamSizeInGb => (is => 'ro', isa => 'Num', xmlname => 'ramSizeInGb', request_name => 'ramSizeInGb', traits => ['Unwrapped','NameInRequest']);
  has TransferPerMonthInGb => (is => 'ro', isa => 'Int', xmlname => 'transferPerMonthInGb', request_name => 'transferPerMonthInGb', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::Bundle

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::Bundle object:

  $service_obj->Method(Att1 => { BundleId => $value, ..., TransferPerMonthInGb => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::Bundle object:

  $result = $service_obj->Method(...);
  $result->Att1->BundleId

=head1 DESCRIPTION

Describes a bundle, which is a set of specs describing your virtual
private server (or I<instance>).

=head1 ATTRIBUTES


=head2 BundleId => Str

  The bundle ID (e.g., C<micro_1_0>).


=head2 CpuCount => Int

  The number of vCPUs included in the bundle (e.g., C<2>).


=head2 DiskSizeInGb => Int

  The size of the SSD (e.g., C<30>).


=head2 InstanceType => Str

  The Amazon EC2 instance type (e.g., C<t2.micro>).


=head2 IsActive => Bool

  A Boolean value indicating whether the bundle is active.


=head2 Name => Str

  A friendly name for the bundle (e.g., C<Micro>).


=head2 Power => Int

  The power of the bundle (e.g., C<500>).


=head2 Price => Num

  The price in US dollars (e.g., C<5.0>).


=head2 RamSizeInGb => Num

  The amount of RAM in GB (e.g., C<2.0>).


=head2 TransferPerMonthInGb => Int

  The data transfer rate per month in GB (e.g., C<2000>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

