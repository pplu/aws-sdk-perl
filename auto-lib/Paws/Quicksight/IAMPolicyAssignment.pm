package Paws::Quicksight::IAMPolicyAssignment;
  use Moose;
  has AssignmentId => (is => 'ro', isa => 'Str');
  has AssignmentName => (is => 'ro', isa => 'Str');
  has AssignmentStatus => (is => 'ro', isa => 'Str');
  has AwsAccountId => (is => 'ro', isa => 'Str');
  has Identities => (is => 'ro', isa => 'Paws::Quicksight::IdentityMap');
  has PolicyArn => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::IAMPolicyAssignment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::IAMPolicyAssignment object:

  $service_obj->Method(Att1 => { AssignmentId => $value, ..., PolicyArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::IAMPolicyAssignment object:

  $result = $service_obj->Method(...);
  $result->Att1->AssignmentId

=head1 DESCRIPTION

An IAM policy assignment.

=head1 ATTRIBUTES


=head2 AssignmentId => Str

  Assignment ID.


=head2 AssignmentName => Str

  Assignment name.


=head2 AssignmentStatus => Str

  Assignment status.


=head2 AwsAccountId => Str

  The AWS account ID.


=head2 Identities => L<Paws::Quicksight::IdentityMap>

  Identities.


=head2 PolicyArn => Str

  The Amazon Resource Name (ARN) for the IAM policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

