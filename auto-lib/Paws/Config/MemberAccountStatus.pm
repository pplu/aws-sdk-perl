package Paws::Config::MemberAccountStatus;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has ConfigRuleName => (is => 'ro', isa => 'Str', required => 1);
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has LastUpdateTime => (is => 'ro', isa => 'Str');
  has MemberAccountRuleStatus => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::MemberAccountStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::MemberAccountStatus object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., MemberAccountRuleStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::MemberAccountStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Organization config rule creation or deletion status in each member
account. This includes the name of the rule, the status, error code and
error message when the rule creation or deletion failed.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

  The 12-digit account ID of a member account.


=head2 B<REQUIRED> ConfigRuleName => Str

  The name of config rule deployed in the member account.


=head2 ErrorCode => Str

  An error code that is returned when config rule creation or deletion
failed in the member account.


=head2 ErrorMessage => Str

  An error message indicating that config rule account creation or
deletion has failed due to an error in the member account.


=head2 LastUpdateTime => Str

  The timestamp of the last status update.


=head2 B<REQUIRED> MemberAccountRuleStatus => Str

  Indicates deployment status for config rule in the member account. When
master account calls C<PutOrganizationConfigRule> action for the first
time, config rule status is created in the member account. When master
account calls C<PutOrganizationConfigRule> action for the second time,
config rule status is updated in the member account. Config rule status
is deleted when the master account deletes C<OrganizationConfigRule>
and disables service access for
C<config-multiaccountsetup.amazonaws.com>.

AWS Config sets the state of the rule to:

=over

=item *

C<CREATE_SUCCESSFUL> when config rule has been created in the member
account.

=item *

C<CREATE_IN_PROGRESS> when config rule is being created in the member
account.

=item *

C<CREATE_FAILED> when config rule creation has failed in the member
account.

=item *

C<DELETE_FAILED> when config rule deletion has failed in the member
account.

=item *

C<DELETE_IN_PROGRESS> when config rule is being deleted in the member
account.

=item *

C<DELETE_SUCCESSFUL> when config rule has been deleted in the member
account.

=item *

C<UPDATE_SUCCESSFUL> when config rule has been updated in the member
account.

=item *

C<UPDATE_IN_PROGRESS> when config rule is being updated in the member
account.

=item *

C<UPDATE_FAILED> when config rule deletion has failed in the member
account.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

