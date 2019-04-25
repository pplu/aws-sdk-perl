
package Paws::CloudWatchEvents::ListRuleNamesByTarget;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has TargetArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRuleNamesByTarget');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::ListRuleNamesByTargetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListRuleNamesByTarget - Arguments for method ListRuleNamesByTarget on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRuleNamesByTarget on the
L<Amazon CloudWatch Events|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method ListRuleNamesByTarget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRuleNamesByTarget.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $ListRuleNamesByTargetResponse = $events->ListRuleNamesByTarget(
      TargetArn => 'MyTargetArn',
      Limit     => 1,                # OPTIONAL
      NextToken => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListRuleNamesByTargetResponse->NextToken;
    my $RuleNames = $ListRuleNamesByTargetResponse->RuleNames;

    # Returns a L<Paws::CloudWatchEvents::ListRuleNamesByTargetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/ListRuleNamesByTarget>

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of results to return.



=head2 NextToken => Str

The token returned by a previous call to retrieve the next set of
results.



=head2 B<REQUIRED> TargetArn => Str

The Amazon Resource Name (ARN) of the target resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRuleNamesByTarget in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

