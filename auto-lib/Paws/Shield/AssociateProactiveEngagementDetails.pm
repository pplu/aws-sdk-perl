
package Paws::Shield::AssociateProactiveEngagementDetails;
  use Moose;
  has EmergencyContactList => (is => 'ro', isa => 'ArrayRef[Paws::Shield::EmergencyContact]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateProactiveEngagementDetails');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Shield::AssociateProactiveEngagementDetailsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::AssociateProactiveEngagementDetails - Arguments for method AssociateProactiveEngagementDetails on L<Paws::Shield>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateProactiveEngagementDetails on the
L<AWS Shield|Paws::Shield> service. Use the attributes of this class
as arguments to method AssociateProactiveEngagementDetails.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateProactiveEngagementDetails.

=head1 SYNOPSIS

    my $shield = Paws->service('Shield');
    my $AssociateProactiveEngagementDetailsResponse =
      $shield->AssociateProactiveEngagementDetails(
      EmergencyContactList => [
        {
          EmailAddress => 'MyEmailAddress',    # min: 1, max: 150
          ContactNotes => 'MyContactNotes',    # min: 1, max: 1024; OPTIONAL
          PhoneNumber  => 'MyPhoneNumber',     # min: 1, max: 16; OPTIONAL
        },
        ...
      ],

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/shield/AssociateProactiveEngagementDetails>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EmergencyContactList => ArrayRef[L<Paws::Shield::EmergencyContact>]

A list of email addresses and phone numbers that the DDoS Response Team
(DRT) can use to contact you for escalations to the DRT and to initiate
proactive customer support.

To enable proactive engagement, the contact list must include at least
one phone number.

The contacts that you provide here replace any contacts that were
already defined. If you already have contacts defined and want to use
them, retrieve the list using C<DescribeEmergencyContactSettings> and
then provide it here.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateProactiveEngagementDetails in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

