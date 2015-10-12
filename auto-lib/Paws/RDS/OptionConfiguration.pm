package Paws::RDS::OptionConfiguration;
  use Moose;
  has DBSecurityGroupMemberships => (is => 'ro', isa => 'ArrayRef[Str]');
  has OptionName => (is => 'ro', isa => 'Str', required => 1);
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Paws::RDS::OptionSetting]');
  has Port => (is => 'ro', isa => 'Int');
  has VpcSecurityGroupMemberships => (is => 'ro', isa => 'ArrayRef[Str]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::OptionConfiguration

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::OptionConfiguration object:

  $service_obj->Method(Att1 => { DBSecurityGroupMemberships => $value, ..., VpcSecurityGroupMemberships => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::OptionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->DBSecurityGroupMemberships

=head1 ATTRIBUTES

=head2 DBSecurityGroupMemberships => ArrayRef[Str]

  A list of DBSecurityGroupMemebrship name strings used for this option.

=head2 B<REQUIRED> OptionName => Str

  The configuration of options to include in a group.

=head2 OptionSettings => ArrayRef[Paws::RDS::OptionSetting]

  The option settings to include in an option group.

=head2 Port => Int

  The optional port for the option.

=head2 VpcSecurityGroupMemberships => ArrayRef[Str]

  A list of VpcSecurityGroupMemebrship name strings used for this option.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

