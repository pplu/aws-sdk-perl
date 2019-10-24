# Generated from default/object.tt
package Paws::DeviceFarm::InstanceProfile;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Bool/;
  use Paws::DeviceFarm::Types qw//;
  has Arn => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has ExcludeAppPackagesFromCleanup => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Name => (is => 'ro', isa => Str);
  has PackageCleanup => (is => 'ro', isa => Bool);
  has RebootAfterUse => (is => 'ro', isa => Bool);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RebootAfterUse' => {
                                     'type' => 'Bool'
                                   },
               'PackageCleanup' => {
                                     'type' => 'Bool'
                                   },
               'ExcludeAppPackagesFromCleanup' => {
                                                    'type' => 'ArrayRef[Str|Undef]'
                                                  },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'RebootAfterUse' => 'rebootAfterUse',
                       'PackageCleanup' => 'packageCleanup',
                       'ExcludeAppPackagesFromCleanup' => 'excludeAppPackagesFromCleanup',
                       'Arn' => 'arn',
                       'Name' => 'name',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::InstanceProfile

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::InstanceProfile object:

  $service_obj->Method(Att1 => { Arn => $value, ..., RebootAfterUse => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::InstanceProfile object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Represents the instance profile.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the instance profile.


=head2 Description => Str

  The description of the instance profile.


=head2 ExcludeAppPackagesFromCleanup => ArrayRef[Str|Undef]

  An array of strings specifying the list of app packages that should not
be cleaned up from the device after a test run is over.

The list of packages is only considered if you set C<packageCleanup> to
C<true>.


=head2 Name => Str

  The name of the instance profile.


=head2 PackageCleanup => Bool

  When set to C<true>, Device Farm will remove app packages after a test
run. The default value is C<false> for private devices.


=head2 RebootAfterUse => Bool

  When set to C<true>, Device Farm will reboot the instance after a test
run. The default value is C<true>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

