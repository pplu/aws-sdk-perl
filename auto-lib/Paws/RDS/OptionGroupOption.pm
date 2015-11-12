package Paws::RDS::OptionGroupOption;
  use Moose;
  has DefaultPort => (is => 'ro', isa => 'Int');
  has Description => (is => 'ro', isa => 'Str');
  has EngineName => (is => 'ro', isa => 'Str');
  has MajorEngineVersion => (is => 'ro', isa => 'Str');
  has MinimumRequiredMinorEngineVersion => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OptionGroupOptionSettings => (is => 'ro', isa => 'ArrayRef[Paws::RDS::OptionGroupOptionSetting]');
  has OptionsDependedOn => (is => 'ro', isa => 'ArrayRef[Str]');
  has Permanent => (is => 'ro', isa => 'Bool');
  has Persistent => (is => 'ro', isa => 'Bool');
  has PortRequired => (is => 'ro', isa => 'Bool');
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

  $service_obj->Method(Att1 => { DefaultPort => $value, ..., PortRequired => $value  });

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

  Specifies the option settings that are available (and the default
value) for each option in an option group.


=head2 OptionsDependedOn => ArrayRef[Str]

  List of all options that are prerequisites for this option.


=head2 Permanent => Bool

  A permanent option cannot be removed from the option group once the
option group is used, and it cannot be removed from the db instance
after assigning an option group with this permanent option.


=head2 Persistent => Bool

  A persistent option cannot be removed from the option group once the
option group is used, but this option can be removed from the db
instance while modifying the related data and assigning another option
group without this option.


=head2 PortRequired => Bool

  Specifies whether the option requires a port.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

