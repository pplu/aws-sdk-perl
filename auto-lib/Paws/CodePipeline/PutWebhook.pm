# Generated from json/callargs_class.tt

package Paws::CodePipeline::PutWebhook;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodePipeline::Types qw/CodePipeline_Tag CodePipeline_WebhookDefinition/;
  has Tags => (is => 'ro', isa => ArrayRef[CodePipeline_Tag], predicate => 1);
  has Webhook => (is => 'ro', isa => CodePipeline_WebhookDefinition, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutWebhook');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodePipeline::PutWebhookOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'type' => 'ArrayRef[CodePipeline_Tag]',
                           'class' => 'Paws::CodePipeline::Tag'
                         },
               'Webhook' => {
                              'class' => 'Paws::CodePipeline::WebhookDefinition',
                              'type' => 'CodePipeline_WebhookDefinition'
                            }
             },
  'IsRequired' => {
                    'Webhook' => 1
                  },
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'Webhook' => 'webhook'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PutWebhook - Arguments for method PutWebhook on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutWebhook on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method PutWebhook.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutWebhook.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $PutWebhookOutput = $codepipeline->PutWebhook(
      Webhook => {
        Authentication =>
          'GITHUB_HMAC',    # values: GITHUB_HMAC, IP, UNAUTHENTICATED
        AuthenticationConfiguration => {
          AllowedIPRange => 'MyWebhookAuthConfigurationAllowedIPRange'
          ,                 # min: 1, max: 100; OPTIONAL
          SecretToken => 'MyWebhookAuthConfigurationSecretToken'
          ,                 # min: 1, max: 100; OPTIONAL
        },
        Filters => [
          {
            JsonPath    => 'MyJsonPath',       # min: 1, max: 150
            MatchEquals => 'MyMatchEquals',    # min: 1, max: 150; OPTIONAL
          },
          ...
        ],                                     # max: 5
        Name           => 'MyWebhookName',     # min: 1, max: 100
        TargetAction   => 'MyActionName',      # min: 1, max: 100
        TargetPipeline => 'MyPipelineName',    # min: 1, max: 100

      },
      Tags => [
        {
          Key   => 'MyTagKey',                 # min: 1, max: 128
          Value => 'MyTagValue',               # max: 256

        },
        ...
      ],                                       # OPTIONAL
    );

    # Results:
    my $Webhook = $PutWebhookOutput->Webhook;

    # Returns a L<Paws::CodePipeline::PutWebhookOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/PutWebhook>

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[CodePipeline_Tag]

The tags for the webhook.



=head2 B<REQUIRED> Webhook => CodePipeline_WebhookDefinition

The detail provided in an input file to create the webhook, such as the
webhook name, the pipeline name, and the action name. Give the webhook
a unique name that helps you identify it. You might name the webhook
after the pipeline and action it targets so that you can easily
recognize what it's used for later.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutWebhook in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

