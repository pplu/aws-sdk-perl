
package Paws::MTurk::ApproveAssignment;
  use Moose;
  has AssignmentId => (is => 'ro', isa => 'Str', required => 1);
  has OverrideRejection => (is => 'ro', isa => 'Bool');
  has RequesterFeedback => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ApproveAssignment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::ApproveAssignmentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::ApproveAssignment - Arguments for method ApproveAssignment on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ApproveAssignment on the
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method ApproveAssignment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ApproveAssignment.

=head1 SYNOPSIS

    my $mturk-requester = Paws->service('MTurk');
    my $ApproveAssignmentResponse = $mturk -requester->ApproveAssignment(
      AssignmentId      => 'MyEntityId',
      OverrideRejection => 1,              # OPTIONAL
      RequesterFeedback => 'MyString',     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mturk-requester/ApproveAssignment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssignmentId => Str

The ID of the assignment. The assignment must correspond to a HIT
created by the Requester.



=head2 OverrideRejection => Bool

A flag indicating that an assignment should be approved even if it was
previously rejected. Defaults to C<False>.



=head2 RequesterFeedback => Str

A message for the Worker, which the Worker can see in the Status
section of the web site.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ApproveAssignment in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

