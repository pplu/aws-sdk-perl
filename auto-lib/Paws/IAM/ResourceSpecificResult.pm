package Paws::IAM::ResourceSpecificResult;
  use Moose;
  has EvalDecisionDetails => (is => 'ro', isa => 'Paws::IAM::EvalDecisionDetailsType');
  has EvalResourceDecision => (is => 'ro', isa => 'Str', required => 1);
  has EvalResourceName => (is => 'ro', isa => 'Str', required => 1);
  has MatchedStatements => (is => 'ro', isa => 'ArrayRef[Paws::IAM::Statement]');
  has MissingContextValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PermissionsBoundaryDecisionDetail => (is => 'ro', isa => 'Paws::IAM::PermissionsBoundaryDecisionDetail');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ResourceSpecificResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::ResourceSpecificResult object:

  $service_obj->Method(Att1 => { EvalDecisionDetails => $value, ..., PermissionsBoundaryDecisionDetail => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::ResourceSpecificResult object:

  $result = $service_obj->Method(...);
  $result->Att1->EvalDecisionDetails

=head1 DESCRIPTION

Contains the result of the simulation of a single API operation call on
a single resource.

This data type is used by a member of the EvaluationResult data type.

=head1 ATTRIBUTES


=head2 EvalDecisionDetails => L<Paws::IAM::EvalDecisionDetailsType>

  Additional details about the results of the evaluation decision on a
single resource. This parameter is returned only for cross-account
simulations. This parameter explains how each policy type contributes
to the resource-specific evaluation decision.


=head2 B<REQUIRED> EvalResourceDecision => Str

  The result of the simulation of the simulated API operation on the
resource specified in C<EvalResourceName>.


=head2 B<REQUIRED> EvalResourceName => Str

  The name of the simulated resource, in Amazon Resource Name (ARN)
format.


=head2 MatchedStatements => ArrayRef[L<Paws::IAM::Statement>]

  A list of the statements in the input policies that determine the
result for this part of the simulation. Remember that even if multiple
statements allow the operation on the resource, if I<any> statement
denies that operation, then the explicit deny overrides any allow. In
addition, the deny statement is the only entry included in the result.


=head2 MissingContextValues => ArrayRef[Str|Undef]

  A list of context keys that are required by the included input policies
but that were not provided by one of the input parameters. This list is
used when a list of ARNs is included in the C<ResourceArns> parameter
instead of "*". If you do not specify individual resources, by setting
C<ResourceArns> to "*" or by not including the C<ResourceArns>
parameter, then any missing context values are instead included under
the C<EvaluationResults> section. To discover the context keys used by
a set of policies, you can call GetContextKeysForCustomPolicy or
GetContextKeysForPrincipalPolicy.


=head2 PermissionsBoundaryDecisionDetail => L<Paws::IAM::PermissionsBoundaryDecisionDetail>

  Contains information about the effect that a permissions boundary has
on a policy simulation when that boundary is applied to an IAM entity.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

