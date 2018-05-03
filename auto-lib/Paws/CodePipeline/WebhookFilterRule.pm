package Paws::CodePipeline::WebhookFilterRule;
  use Moose;
  has JsonPath => (is => 'ro', isa => 'Str', request_name => 'jsonPath', traits => ['NameInRequest'], required => 1);
  has MatchEquals => (is => 'ro', isa => 'Str', request_name => 'matchEquals', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::WebhookFilterRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::WebhookFilterRule object:

  $service_obj->Method(Att1 => { JsonPath => $value, ..., MatchEquals => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::WebhookFilterRule object:

  $result = $service_obj->Method(...);
  $result->Att1->JsonPath

=head1 DESCRIPTION

The event criteria that specify when a webhook notification is sent to
your URL.

=head1 ATTRIBUTES


=head2 B<REQUIRED> JsonPath => Str

  A JsonPath expression that will be applied to the body/payload of the
webhook. The value selected by JsonPath expression must match the value
specified in the matchEquals field, otherwise the request will be
ignored. More information on JsonPath expressions can be found here:
https://github.com/json-path/JsonPath.


=head2 MatchEquals => Str

  The value selected by the JsonPath expression must match what is
supplied in the MatchEquals field, otherwise the request will be
ignored. Properties from the target action configuration can be
included as placeholders in this value by surrounding the action
configuration key with curly braces. For example, if the value supplied
here is "refs/heads/{Branch}" and the target action has an action
configuration property called "Branch" with a value of "master", the
MatchEquals value will be evaluated as "refs/heads/master". A list of
action configuration properties for built-in action types can be found
here: Pipeline Structure Reference Action Requirements
(http://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#action-requirements).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

