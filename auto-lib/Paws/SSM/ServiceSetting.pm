# Generated from default/object.tt
package Paws::SSM::ServiceSetting;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw//;
  has ARN => (is => 'ro', isa => Str);
  has LastModifiedDate => (is => 'ro', isa => Str);
  has LastModifiedUser => (is => 'ro', isa => Str);
  has SettingId => (is => 'ro', isa => Str);
  has SettingValue => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ARN' => {
                          'type' => 'Str'
                        },
               'Status' => {
                             'type' => 'Str'
                           },
               'LastModifiedDate' => {
                                       'type' => 'Str'
                                     },
               'LastModifiedUser' => {
                                       'type' => 'Str'
                                     },
               'SettingValue' => {
                                   'type' => 'Str'
                                 },
               'SettingId' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ServiceSetting

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::ServiceSetting object:

  $service_obj->Method(Att1 => { ARN => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::ServiceSetting object:

  $result = $service_obj->Method(...);
  $result->Att1->ARN

=head1 DESCRIPTION

The service setting data structure.

C<ServiceSetting> is an account-level setting for an AWS service. This
setting defines how a user interacts with or uses a service or a
feature of a service. For example, if an AWS service charges money to
the account based on feature or service usage, then the AWS service
team might create a default setting of "false". This means the user
can't use this feature unless they change the setting to "true" and
intentionally opt in for a paid feature.

Services map a C<SettingId> object to a setting value. AWS services
teams define the default value for a C<SettingId>. You can't create a
new C<SettingId>, but you can overwrite the default value if you have
the C<ssm:UpdateServiceSetting> permission for the setting. Use the
UpdateServiceSetting API action to change the default setting. Or, use
the ResetServiceSetting to change the value back to the original value
defined by the AWS service team.

=head1 ATTRIBUTES


=head2 ARN => Str

  The ARN of the service setting.


=head2 LastModifiedDate => Str

  The last time the service setting was modified.


=head2 LastModifiedUser => Str

  The ARN of the last modified user. This field is populated only if the
setting value was overwritten.


=head2 SettingId => Str

  The ID of the service setting.


=head2 SettingValue => Str

  The value of the service setting.


=head2 Status => Str

  The status of the service setting. The value can be Default, Customized
or PendingUpdate.

=over

=item *

Default: The current setting uses a default value provisioned by the
AWS service team.

=item *

Customized: The current setting use a custom value specified by the
customer.

=item *

PendingUpdate: The current setting uses a default or custom value, but
a setting change request is pending approval.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

