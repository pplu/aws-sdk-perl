package Paws::RDS::OptionSetting;
  use Moose;
  has AllowedValues => (is => 'ro', isa => 'Str');
  has ApplyType => (is => 'ro', isa => 'Str');
  has DataType => (is => 'ro', isa => 'Str');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IsCollection => (is => 'ro', isa => 'Bool');
  has IsModifiable => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::OptionSetting

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::OptionSetting object:

  $service_obj->Method(Att1 => { AllowedValues => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::OptionSetting object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowedValues

=head1 DESCRIPTION

Option settings are the actual settings being applied or configured for
that option. It is used when you modify an option group or describe
option groups. For example, the NATIVE_NETWORK_ENCRYPTION option has a
setting called SQLNET.ENCRYPTION_SERVER that can have several different
values.

=head1 ATTRIBUTES


=head2 AllowedValues => Str

  The allowed values of the option setting.


=head2 ApplyType => Str

  The DB engine specific parameter type.


=head2 DataType => Str

  The data type of the option setting.


=head2 DefaultValue => Str

  The default value of the option setting.


=head2 Description => Str

  The description of the option setting.


=head2 IsCollection => Bool

  Indicates if the option setting is part of a collection.


=head2 IsModifiable => Bool

  A Boolean value that, when true, indicates the option setting can be
modified from the default.


=head2 Name => Str

  The name of the option that has settings that you can set.


=head2 Value => Str

  The current value of the option setting.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

