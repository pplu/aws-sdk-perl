
package Paws::MTurk::RejectAssignment;
  use Moose;
  has AssignmentId => (is => 'ro', isa => 'Str', required => 1);
  has RequesterFeedback => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RejectAssignment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::RejectAssignmentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::RejectAssignment - Arguments for method RejectAssignment on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RejectAssignment on the
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method RejectAssignment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RejectAssignment.

=head1 SYNOPSIS

    my $mturk-requester = Paws->service('MTurk');
    my $RejectAssignmentResponse = $mturk -requester->RejectAssignment(
      AssignmentId      => 'MyEntityId',
      RequesterFeedback => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mturk-requester/RejectAssignment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssignmentId => Str

The ID of the assignment. The assignment must correspond to a HIT
created by the Requester.



=head2 B<REQUIRED> RequesterFeedback => Str

A message for the Worker, which the Worker can see in the Status
section of the web site.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RejectAssignment in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

