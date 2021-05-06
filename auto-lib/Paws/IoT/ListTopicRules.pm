
package Paws::IoT::ListTopicRules;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has RuleDisabled => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'ruleDisabled');
  has Topic => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'topic');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTopicRules');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/rules');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListTopicRulesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListTopicRules - Arguments for method ListTopicRules on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTopicRules on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListTopicRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTopicRules.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListTopicRulesResponse = $iot->ListTopicRules(
      MaxResults   => 1,                # OPTIONAL
      NextToken    => 'MyNextToken',    # OPTIONAL
      RuleDisabled => 1,                # OPTIONAL
      Topic        => 'MyTopic',        # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTopicRulesResponse->NextToken;
    my $Rules     = $ListTopicRulesResponse->Rules;

    # Returns a L<Paws::IoT::ListTopicRulesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListTopicRules>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

A token used to retrieve the next value.



=head2 RuleDisabled => Bool

Specifies whether the rule is disabled.



=head2 Topic => Str

The topic.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTopicRules in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

