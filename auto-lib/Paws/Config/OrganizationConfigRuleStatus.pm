# Generated from default/object.tt
package Paws::Config::OrganizationConfigRuleStatus;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Config::Types qw//;
  has ErrorCode => (is => 'ro', isa => Str);
  has ErrorMessage => (is => 'ro', isa => Str);
  has LastUpdateTime => (is => 'ro', isa => Str);
  has OrganizationConfigRuleName => (is => 'ro', isa => Str, required => 1);
  has OrganizationRuleStatus => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'OrganizationConfigRuleName' => 1,
                    'OrganizationRuleStatus' => 1
                  },
  'types' => {
               'LastUpdateTime' => {
                                     'type' => 'Str'
                                   },
               'OrganizationConfigRuleName' => {
                                                 'type' => 'Str'
                                               },
               'ErrorCode' => {
                                'type' => 'Str'
                              },
               'OrganizationRuleStatus' => {
                                             'type' => 'Str'
                                           },
               'ErrorMessage' => {
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

Paws::Config::OrganizationConfigRuleStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::OrganizationConfigRuleStatus object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., OrganizationRuleStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::OrganizationConfigRuleStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Returns the status for an organization config rule in an organization.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  An error code that is returned when organization config rule creation
or deletion has failed.


=head2 ErrorMessage => Str

  An error message indicating that organization config rule creation or
deletion failed due to an error.


=head2 LastUpdateTime => Str

  The timestamp of the last update.


=head2 B<REQUIRED> OrganizationConfigRuleName => Str

  The name that you assign to organization config rule.


=head2 B<REQUIRED> OrganizationRuleStatus => Str

  Indicates deployment status of an organization config rule. When master
account calls PutOrganizationConfigRule action for the first time,
config rule status is created in all the member accounts. When master
account calls PutOrganizationConfigRule action for the second time,
config rule status is updated in all the member accounts. Additionally,
config rule status is updated when one or more member accounts join or
leave an organization. Config rule status is deleted when the master
account deletes OrganizationConfigRule in all the member accounts and
disables service access for C<config-multiaccountsetup.amazonaws.com>.

AWS Config sets the state of the rule to:

=over

=item *

C<CREATE_SUCCESSFUL> when an organization config rule has been
successfully created in all the member accounts.

=item *

C<CREATE_IN_PROGRESS> when an organization config rule creation is in
progress.

=item *

C<CREATE_FAILED> when an organization config rule creation failed in
one or more member accounts within that organization.

=item *

C<DELETE_FAILED> when an organization config rule deletion failed in
one or more member accounts within that organization.

=item *

C<DELETE_IN_PROGRESS> when an organization config rule deletion is in
progress.

=item *

C<DELETE_SUCCESSFUL> when an organization config rule has been
successfully deleted from all the member accounts.

=item *

C<UPDATE_SUCCESSFUL> when an organization config rule has been
successfully updated in all the member accounts.

=item *

C<UPDATE_IN_PROGRESS> when an organization config rule update is in
progress.

=item *

C<UPDATE_FAILED> when an organization config rule update failed in one
or more member accounts within that organization.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

