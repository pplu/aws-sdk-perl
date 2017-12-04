package Paws::RDS::OptionGroupOption;
  use Moose;
  has DefaultPort => (is => 'ro', isa => 'Int');
  has Description => (is => 'ro', isa => 'Str');
  has EngineName => (is => 'ro', isa => 'Str');
  has MajorEngineVersion => (is => 'ro', isa => 'Str');
  has MinimumRequiredMinorEngineVersion => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OptionGroupOptionSettings => (is => 'ro', isa => 'ArrayRef[Paws::RDS::OptionGroupOptionSetting]', request_name => 'OptionGroupOptionSetting', traits => ['NameInRequest']);
  has OptionGroupOptionVersions => (is => 'ro', isa => 'ArrayRef[Paws::RDS::OptionVersion]', request_name => 'OptionVersion', traits => ['NameInRequest']);
  has OptionsConflictsWith => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'OptionConflictName', traits => ['NameInRequest']);
  has OptionsDependedOn => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'OptionName', traits => ['NameInRequest']);
  has Permanent => (is => 'ro', isa => 'Bool');
  has Persistent => (is => 'ro', isa => 'Bool');
  has PortRequired => (is => 'ro', isa => 'Bool');
  has RequiresAutoMinorEngineVersionUpgrade => (is => 'ro', isa => 'Bool');
  has SupportsOptionVersionDowngrade => (is => 'ro', isa => 'Bool');
  has VpcOnly => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::OptionGroupOption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::OptionGroupOption object:

  $service_obj->Method(Att1 => { DefaultPort => $value, ..., VpcOnly => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::OptionGroupOption object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultPort

=head1 DESCRIPTION

Available option.

=head1 ATTRIBUTES


=head2 DefaultPort => Int

  If the option requires a port, specifies the default port for the
option.


=head2 Description => Str

  The description of the option.


=head2 EngineName => Str

  The name of the engine that this option can be applied to.


=head2 MajorEngineVersion => Str

  Indicates the major engine version that the option is available for.


=head2 MinimumRequiredMinorEngineVersion => Str

  The minimum required engine version for the option to be applied.


=head2 Name => Str

  The name of the option.


=head2 OptionGroupOptionSettings => ArrayRef[L<Paws::RDS::OptionGroupOptionSetting>]

  The option settings that are available (and the default value) for each
option in an option group.


=head2 OptionGroupOptionVersions => ArrayRef[L<Paws::RDS::OptionVersion>]

  The versions that are available for the option.


=head2 OptionsConflictsWith => ArrayRef[Str|Undef]

  The options that conflict with this option.


=head2 OptionsDependedOn => ArrayRef[Str|Undef]

  The options that are prerequisites for this option.


=head2 Permanent => Bool

  Permanent options can never be removed from an option group. An option
group containing a permanent option can't be removed from a DB
instance.


=head2 Persistent => Bool

  Persistent options can't be removed from an option group while DB
instances are associated with the option group. If you disassociate all
DB instances from the option group, your can remove the persistent
option from the option group.


=head2 PortRequired => Bool

  Specifies whether the option requires a port.


=head2 RequiresAutoMinorEngineVersionUpgrade => Bool

  If true, you must enable the Auto Minor Version Upgrade setting for
your DB instance before you can use this option. You can enable Auto
Minor Version Upgrade when you first create your DB instance, or by
modifying your DB instance later.


=head2 SupportsOptionVersionDowngrade => Bool

  If true, you can change the option to an earlier version of the option.
This only applies to options that have different versions available.


=head2 VpcOnly => Bool

  If true, you can only use this option with a DB instance that is in a
VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

