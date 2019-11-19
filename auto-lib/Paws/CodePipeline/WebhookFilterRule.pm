# Generated from default/object.tt
package Paws::CodePipeline::WebhookFilterRule;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodePipeline::Types qw//;
  has JsonPath => (is => 'ro', isa => Str, required => 1);
  has MatchEquals => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'JsonPath' => 'jsonPath',
                       'MatchEquals' => 'matchEquals'
                     },
  'IsRequired' => {
                    'JsonPath' => 1
                  },
  'types' => {
               'MatchEquals' => {
                                  'type' => 'Str'
                                },
               'JsonPath' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }


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

  A JsonPath expression that is applied to the body/payload of the
webhook. The value selected by the JsonPath expression must match the
value specified in the C<MatchEquals> field. Otherwise, the request is
ignored. For more information, see Java JsonPath implementation
(https://github.com/json-path/JsonPath) in GitHub.


=head2 MatchEquals => Str

  The value selected by the C<JsonPath> expression must match what is
supplied in the C<MatchEquals> field. Otherwise, the request is
ignored. Properties from the target action configuration can be
included as placeholders in this value by surrounding the action
configuration key with curly brackets. For example, if the value
supplied here is "refs/heads/{Branch}" and the target action has an
action configuration property called "Branch" with a value of "master",
the C<MatchEquals> value is evaluated as "refs/heads/master". For a
list of action configuration properties for built-in action types, see
Pipeline Structure Reference Action Requirements
(https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#action-requirements).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

