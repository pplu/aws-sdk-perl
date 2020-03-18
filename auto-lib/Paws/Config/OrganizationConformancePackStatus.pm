package Paws::Config::OrganizationConformancePackStatus;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has LastUpdateTime => (is => 'ro', isa => 'Str');
  has OrganizationConformancePackName => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::OrganizationConformancePackStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::OrganizationConformancePackStatus object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::OrganizationConformancePackStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Returns the status for an organization conformance pack in an
organization.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  An error code that is returned when organization conformance pack
creation or deletion has failed in a member account.


=head2 ErrorMessage => Str

  An error message indicating that organization conformance pack creation
or deletion failed due to an error.


=head2 LastUpdateTime => Str

  The timestamp of the last update.


=head2 B<REQUIRED> OrganizationConformancePackName => Str

  The name that you assign to organization conformance pack.


=head2 B<REQUIRED> Status => Str

  Indicates deployment status of an organization conformance pack. When
master account calls PutOrganizationConformancePack for the first time,
conformance pack status is created in all the member accounts. When
master account calls PutOrganizationConformancePack for the second
time, conformance pack status is updated in all the member accounts.
Additionally, conformance pack status is updated when one or more
member accounts join or leave an organization. Conformance pack status
is deleted when the master account deletes OrganizationConformancePack
in all the member accounts and disables service access for
C<config-multiaccountsetup.amazonaws.com>.

AWS Config sets the state of the conformance pack to:

=over

=item *

C<CREATE_SUCCESSFUL> when an organization conformance pack has been
successfully created in all the member accounts.

=item *

C<CREATE_IN_PROGRESS> when an organization conformance pack creation is
in progress.

=item *

C<CREATE_FAILED> when an organization conformance pack creation failed
in one or more member accounts within that organization.

=item *

C<DELETE_FAILED> when an organization conformance pack deletion failed
in one or more member accounts within that organization.

=item *

C<DELETE_IN_PROGRESS> when an organization conformance pack deletion is
in progress.

=item *

C<DELETE_SUCCESSFUL> when an organization conformance pack has been
successfully deleted from all the member accounts.

=item *

C<UPDATE_SUCCESSFUL> when an organization conformance pack has been
successfully updated in all the member accounts.

=item *

C<UPDATE_IN_PROGRESS> when an organization conformance pack update is
in progress.

=item *

C<UPDATE_FAILED> when an organization conformance pack update failed in
one or more member accounts within that organization.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

