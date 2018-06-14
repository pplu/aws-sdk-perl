
package Paws::CloudWatchEvents::ListTargetsByRule;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Rule => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTargetsByRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::ListTargetsByRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListTargetsByRule - Arguments for method ListTargetsByRule on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTargetsByRule on the
L<Amazon CloudWatch Events|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method ListTargetsByRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTargetsByRule.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $ListTargetsByRuleResponse = $events->ListTargetsByRule(
      Rule      => 'MyRuleName',
      Limit     => 1,                # OPTIONAL
      NextToken => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTargetsByRuleResponse->NextToken;
    my $Targets   = $ListTargetsByRuleResponse->Targets;

    # Returns a L<Paws::CloudWatchEvents::ListTargetsByRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/ListTargetsByRule>

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of results to return.



=head2 NextToken => Str

The token returned by a previous call to retrieve the next set of
results.



=head2 B<REQUIRED> Rule => Str

The name of the rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTargetsByRule in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

