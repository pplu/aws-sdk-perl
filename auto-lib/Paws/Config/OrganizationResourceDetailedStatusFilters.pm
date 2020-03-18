package Paws::Config::OrganizationResourceDetailedStatusFilters;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::OrganizationResourceDetailedStatusFilters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::OrganizationResourceDetailedStatusFilters object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::OrganizationResourceDetailedStatusFilters object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Status filter object to filter results based on specific member account
ID or status type for an organization conformance pack.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The 12-digit account ID of the member account within an organization.


=head2 Status => Str

  Indicates deployment status for conformance pack in a member account.
When master account calls C<PutOrganizationConformancePack> action for
the first time, conformance pack status is created in the member
account. When master account calls C<PutOrganizationConformancePack>
action for the second time, conformance pack status is updated in the
member account. Conformance pack status is deleted when the master
account deletes C<OrganizationConformancePack> and disables service
access for C<config-multiaccountsetup.amazonaws.com>.

AWS Config sets the state of the conformance pack to:

=over

=item *

C<CREATE_SUCCESSFUL> when conformance pack has been created in the
member account.

=item *

C<CREATE_IN_PROGRESS> when conformance pack is being created in the
member account.

=item *

C<CREATE_FAILED> when conformance pack creation has failed in the
member account.

=item *

C<DELETE_FAILED> when conformance pack deletion has failed in the
member account.

=item *

C<DELETE_IN_PROGRESS> when conformance pack is being deleted in the
member account.

=item *

C<DELETE_SUCCESSFUL> when conformance pack has been deleted in the
member account.

=item *

C<UPDATE_SUCCESSFUL> when conformance pack has been updated in the
member account.

=item *

C<UPDATE_IN_PROGRESS> when conformance pack is being updated in the
member account.

=item *

C<UPDATE_FAILED> when conformance pack deletion has failed in the
member account.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

