package Paws::IAM::Statement;
  use Moose;
  has EndPosition => (is => 'ro', isa => 'Paws::IAM::Position');
  has SourcePolicyId => (is => 'ro', isa => 'Str');
  has SourcePolicyType => (is => 'ro', isa => 'Str');
  has StartPosition => (is => 'ro', isa => 'Paws::IAM::Position');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::Statement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::Statement object:

  $service_obj->Method(Att1 => { EndPosition => $value, ..., StartPosition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::Statement object:

  $result = $service_obj->Method(...);
  $result->Att1->EndPosition

=head1 DESCRIPTION

Contains a reference to a C<Statement> element in a policy document
that determines the result of the simulation.

This data type is used by the C<MatchedStatements> member of the C<
EvaluationResult > type.

=head1 ATTRIBUTES


=head2 EndPosition => L<Paws::IAM::Position>

  The row and column of the end of a C<Statement> in an IAM policy.


=head2 SourcePolicyId => Str

  The identifier of the policy that was provided as an input.


=head2 SourcePolicyType => Str

  The type of the policy.


=head2 StartPosition => L<Paws::IAM::Position>

  The row and column of the beginning of the C<Statement> in an IAM
policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

