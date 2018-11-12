package Paws::RDS::OptionGroupOptionSetting;
  use Moose;
  has AllowedValues => (is => 'ro', isa => 'Str');
  has ApplyType => (is => 'ro', isa => 'Str');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has IsModifiable => (is => 'ro', isa => 'Bool');
  has IsRequired => (is => 'ro', isa => 'Bool');
  has MinimumEngineVersionPerAllowedValue => (is => 'ro', isa => 'ArrayRef[Paws::RDS::MinimumEngineVersionPerAllowedValue]', request_name => 'MinimumEngineVersionPerAllowedValue', traits => ['NameInRequest']);
  has SettingDescription => (is => 'ro', isa => 'Str');
  has SettingName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::OptionGroupOptionSetting

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::OptionGroupOptionSetting object:

  $service_obj->Method(Att1 => { AllowedValues => $value, ..., SettingName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::OptionGroupOptionSetting object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowedValues

=head1 DESCRIPTION

Option group option settings are used to display settings available for
each option with their default values and other information. These
values are used with the DescribeOptionGroupOptions action.

=head1 ATTRIBUTES


=head2 AllowedValues => Str

  Indicates the acceptable values for the option group option.


=head2 ApplyType => Str

  The DB engine specific parameter type for the option group option.


=head2 DefaultValue => Str

  The default value for the option group option.


=head2 IsModifiable => Bool

  Boolean value where true indicates that this option group option can be
changed from the default value.


=head2 IsRequired => Bool

  Boolean value where true indicates that a value must be specified for
this option setting of the option group option.


=head2 MinimumEngineVersionPerAllowedValue => ArrayRef[L<Paws::RDS::MinimumEngineVersionPerAllowedValue>]

  The minimum DB engine version required for the corresponding allowed
value for this option setting.


=head2 SettingDescription => Str

  The description of the option group option.


=head2 SettingName => Str

  The name of the option group option.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

