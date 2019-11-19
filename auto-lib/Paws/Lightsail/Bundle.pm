# Generated from default/object.tt
package Paws::Lightsail::Bundle;
  use Moo;
  use Types::Standard qw/Str Int Bool Num Undef ArrayRef/;
  use Paws::Lightsail::Types qw//;
  has BundleId => (is => 'ro', isa => Str);
  has CpuCount => (is => 'ro', isa => Int);
  has DiskSizeInGb => (is => 'ro', isa => Int);
  has InstanceType => (is => 'ro', isa => Str);
  has IsActive => (is => 'ro', isa => Bool);
  has Name => (is => 'ro', isa => Str);
  has Power => (is => 'ro', isa => Int);
  has Price => (is => 'ro', isa => Num);
  has RamSizeInGb => (is => 'ro', isa => Num);
  has SupportedPlatforms => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has TransferPerMonthInGb => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SupportedPlatforms' => {
                                         'type' => 'ArrayRef[Str|Undef]'
                                       },
               'InstanceType' => {
                                   'type' => 'Str'
                                 },
               'Name' => {
                           'type' => 'Str'
                         },
               'TransferPerMonthInGb' => {
                                           'type' => 'Int'
                                         },
               'DiskSizeInGb' => {
                                   'type' => 'Int'
                                 },
               'Power' => {
                            'type' => 'Int'
                          },
               'RamSizeInGb' => {
                                  'type' => 'Num'
                                },
               'BundleId' => {
                               'type' => 'Str'
                             },
               'CpuCount' => {
                               'type' => 'Int'
                             },
               'IsActive' => {
                               'type' => 'Bool'
                             },
               'Price' => {
                            'type' => 'Num'
                          }
             },
  'NameInRequest' => {
                       'TransferPerMonthInGb' => 'transferPerMonthInGb',
                       'InstanceType' => 'instanceType',
                       'SupportedPlatforms' => 'supportedPlatforms',
                       'Name' => 'name',
                       'IsActive' => 'isActive',
                       'CpuCount' => 'cpuCount',
                       'Price' => 'price',
                       'Power' => 'power',
                       'DiskSizeInGb' => 'diskSizeInGb',
                       'BundleId' => 'bundleId',
                       'RamSizeInGb' => 'ramSizeInGb'
                     }
}
;
    return $Params_map;
  }


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

  A numeric value that represents the power of the bundle (e.g., C<500>).
You can use the bundle's power value in conjunction with a blueprint's
minimum power value to determine whether the blueprint will run on the
bundle. For example, you need a bundle with a power value of 500 or
more to create an instance that uses a blueprint with a minimum power
value of 500.


=head2 Price => Num

  The price in US dollars (e.g., C<5.0>).


=head2 RamSizeInGb => Num

  The amount of RAM in GB (e.g., C<2.0>).


=head2 SupportedPlatforms => ArrayRef[Str|Undef]

  The operating system platform (Linux/Unix-based or Windows
Server-based) that the bundle supports. You can only launch a
C<WINDOWS> bundle on a blueprint that supports the C<WINDOWS> platform.
C<LINUX_UNIX> blueprints require a C<LINUX_UNIX> bundle.


=head2 TransferPerMonthInGb => Int

  The data transfer rate per month in GB (e.g., C<2000>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

