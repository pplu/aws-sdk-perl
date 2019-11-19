
package Paws::IoT::ListTopicRules;
  use Moo;
  use Types::Standard qw/Str Int Bool/;
  use Paws::IoT::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has RuleDisabled => (is => 'ro', isa => Bool, predicate => 1);
  has Topic => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListTopicRules');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/rules');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::ListTopicRulesResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Topic' => {
                            'type' => 'Str'
                          },
               'RuleDisabled' => {
                                   'type' => 'Bool'
                                 }
             },
  'ParamInQuery' => {
                      'Topic' => 'topic',
                      'NextToken' => 'nextToken',
                      'MaxResults' => 'maxResults',
                      'RuleDisabled' => 'ruleDisabled'
                    }
}
;
    return $Params_map;
  }

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

