
package Paws::MTurk::CreateHITType;
  use Moose;
  has AssignmentDurationInSeconds => (is => 'ro', isa => 'Int', required => 1);
  has AutoApprovalDelayInSeconds => (is => 'ro', isa => 'Int');
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has Keywords => (is => 'ro', isa => 'Str');
  has QualificationRequirements => (is => 'ro', isa => 'ArrayRef[Paws::MTurk::QualificationRequirement]');
  has Reward => (is => 'ro', isa => 'Str', required => 1);
  has Title => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHITType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::CreateHITTypeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::CreateHITType - Arguments for method CreateHITType on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateHITType on the 
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method CreateHITType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateHITType.

As an example:

  $service_obj->CreateHITType(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/mturk/>
=head1 ATTRIBUTES


=head2 B<REQUIRED> AssignmentDurationInSeconds => Int

The amount of time, in seconds, that a Worker has to complete the HIT
after accepting it. If a Worker does not complete the assignment within
the specified duration, the assignment is considered abandoned. If the
HIT is still active (that is, its lifetime has not elapsed), the
assignment becomes available for other users to find and accept.



=head2 AutoApprovalDelayInSeconds => Int

The number of seconds after an assignment for the HIT has been
submitted, after which the assignment is considered Approved
automatically unless the Requester explicitly rejects it.



=head2 B<REQUIRED> Description => Str

A general description of the HIT. A description includes detailed
information about the kind of task the HIT contains. On the Amazon
Mechanical Turk web site, the HIT description appears in the expanded
view of search results, and in the HIT and assignment screens. A good
description gives the user enough information to evaluate the HIT
before accepting it.



=head2 Keywords => Str

One or more words or phrases that describe the HIT, separated by
commas. These words are used in searches to find HITs.



=head2 QualificationRequirements => ArrayRef[L<Paws::MTurk::QualificationRequirement>]

Conditions that a Worker's Qualifications must meet in order to accept
the HIT. A HIT can have between zero and ten Qualification
requirements. All requirements must be met in order for a Worker to
accept the HIT. Additionally, other actions can be restricted using the
C<ActionsGuarded> field on each C<QualificationRequirement> structure.



=head2 B<REQUIRED> Reward => Str

The amount of money the Requester will pay a Worker for successfully
completing the HIT.



=head2 B<REQUIRED> Title => Str

The title of the HIT. A title should be short and descriptive about the
kind of task the HIT contains. On the Amazon Mechanical Turk web site,
the HIT title appears in search results, and everywhere the HIT is
mentioned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateHITType in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

