# Generated from default/object.tt
package Paws::RDS::Option;
  use Moo;
  use Types::Standard qw/ArrayRef Str Bool Int/;
  use Paws::RDS::Types qw/RDS_VpcSecurityGroupMembership RDS_OptionSetting RDS_DBSecurityGroupMembership/;
  has DBSecurityGroupMemberships => (is => 'ro', isa => ArrayRef[RDS_DBSecurityGroupMembership]);
  has OptionDescription => (is => 'ro', isa => Str);
  has OptionName => (is => 'ro', isa => Str);
  has OptionSettings => (is => 'ro', isa => ArrayRef[RDS_OptionSetting]);
  has OptionVersion => (is => 'ro', isa => Str);
  has Permanent => (is => 'ro', isa => Bool);
  has Persistent => (is => 'ro', isa => Bool);
  has Port => (is => 'ro', isa => Int);
  has VpcSecurityGroupMemberships => (is => 'ro', isa => ArrayRef[RDS_VpcSecurityGroupMembership]);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DBSecurityGroupMemberships' => 'DBSecurityGroup',
                       'VpcSecurityGroupMemberships' => 'VpcSecurityGroupMembership',
                       'OptionSettings' => 'OptionSetting'
                     },
  'types' => {
               'OptionDescription' => {
                                        'type' => 'Str'
                                      },
               'Permanent' => {
                                'type' => 'Bool'
                              },
               'DBSecurityGroupMemberships' => {
                                                 'type' => 'ArrayRef[RDS_DBSecurityGroupMembership]',
                                                 'class' => 'Paws::RDS::DBSecurityGroupMembership'
                                               },
               'OptionVersion' => {
                                    'type' => 'Str'
                                  },
               'VpcSecurityGroupMemberships' => {
                                                  'class' => 'Paws::RDS::VpcSecurityGroupMembership',
                                                  'type' => 'ArrayRef[RDS_VpcSecurityGroupMembership]'
                                                },
               'OptionName' => {
                                 'type' => 'Str'
                               },
               'OptionSettings' => {
                                     'class' => 'Paws::RDS::OptionSetting',
                                     'type' => 'ArrayRef[RDS_OptionSetting]'
                                   },
               'Port' => {
                           'type' => 'Int'
                         },
               'Persistent' => {
                                 'type' => 'Bool'
                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::Option

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::Option object:

  $service_obj->Method(Att1 => { DBSecurityGroupMemberships => $value, ..., VpcSecurityGroupMemberships => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::Option object:

  $result = $service_obj->Method(...);
  $result->Att1->DBSecurityGroupMemberships

=head1 DESCRIPTION

Option details.

=head1 ATTRIBUTES


=head2 DBSecurityGroupMemberships => ArrayRef[RDS_DBSecurityGroupMembership]

  If the option requires access to a port, then this DB security group
allows access to the port.


=head2 OptionDescription => Str

  The description of the option.


=head2 OptionName => Str

  The name of the option.


=head2 OptionSettings => ArrayRef[RDS_OptionSetting]

  The option settings for this option.


=head2 OptionVersion => Str

  The version of the option.


=head2 Permanent => Bool

  Indicate if this option is permanent.


=head2 Persistent => Bool

  Indicate if this option is persistent.


=head2 Port => Int

  If required, the port configured for this option to use.


=head2 VpcSecurityGroupMemberships => ArrayRef[RDS_VpcSecurityGroupMembership]

  If the option requires access to a port, then this VPC security group
allows access to the port.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

