# Generated from json/callargs_class.tt

package Paws::DeviceFarm::CreateInstanceProfile;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Bool/;
  use Paws::DeviceFarm::Types qw//;
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has ExcludeAppPackagesFromCleanup => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has PackageCleanup => (is => 'ro', isa => Bool, predicate => 1);
  has RebootAfterUse => (is => 'ro', isa => Bool, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateInstanceProfile');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DeviceFarm::CreateInstanceProfileResult');
  class_has _result_key => (isa => Str, is => 'ro');

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
                       'Name' => 'name',
                       'Description' => 'description'
                     },
  'IsRequired' => {
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::CreateInstanceProfile - Arguments for method CreateInstanceProfile on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInstanceProfile on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method CreateInstanceProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInstanceProfile.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    my $CreateInstanceProfileResult = $devicefarm->CreateInstanceProfile(
      Name                          => 'MyName',
      Description                   => 'MyMessage',            # OPTIONAL
      ExcludeAppPackagesFromCleanup => [ 'MyString', ... ],    # OPTIONAL
      PackageCleanup                => 1,                      # OPTIONAL
      RebootAfterUse                => 1,                      # OPTIONAL
    );

    # Results:
    my $InstanceProfile = $CreateInstanceProfileResult->InstanceProfile;

    # Returns a L<Paws::DeviceFarm::CreateInstanceProfileResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/CreateInstanceProfile>

=head1 ATTRIBUTES


=head2 Description => Str

The description of your instance profile.



=head2 ExcludeAppPackagesFromCleanup => ArrayRef[Str|Undef]

An array of strings specifying the list of app packages that should not
be cleaned up from the device after a test run is over.

The list of packages is only considered if you set C<packageCleanup> to
C<true>.



=head2 B<REQUIRED> Name => Str

The name of your instance profile.



=head2 PackageCleanup => Bool

When set to C<true>, Device Farm will remove app packages after a test
run. The default value is C<false> for private devices.



=head2 RebootAfterUse => Bool

When set to C<true>, Device Farm will reboot the instance after a test
run. The default value is C<true>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInstanceProfile in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

