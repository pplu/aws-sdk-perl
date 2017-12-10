package Paws::CodePipeline::ActionTypeSettings;
  use Moose;
  has EntityUrlTemplate => (is => 'ro', isa => 'Str', request_name => 'entityUrlTemplate', traits => ['NameInRequest']);
  has ExecutionUrlTemplate => (is => 'ro', isa => 'Str', request_name => 'executionUrlTemplate', traits => ['NameInRequest']);
  has RevisionUrlTemplate => (is => 'ro', isa => 'Str', request_name => 'revisionUrlTemplate', traits => ['NameInRequest']);
  has ThirdPartyConfigurationUrl => (is => 'ro', isa => 'Str', request_name => 'thirdPartyConfigurationUrl', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ActionTypeSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ActionTypeSettings object:

  $service_obj->Method(Att1 => { EntityUrlTemplate => $value, ..., ThirdPartyConfigurationUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ActionTypeSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->EntityUrlTemplate

=head1 DESCRIPTION

Returns information about the settings for an action type.

=head1 ATTRIBUTES


=head2 EntityUrlTemplate => Str

  The URL returned to the AWS CodePipeline console that provides a deep
link to the resources of the external system, such as the configuration
page for an AWS CodeDeploy deployment group. This link is provided as
part of the action display within the pipeline.


=head2 ExecutionUrlTemplate => Str

  The URL returned to the AWS CodePipeline console that contains a link
to the top-level landing page for the external system, such as console
page for AWS CodeDeploy. This link is shown on the pipeline view page
in the AWS CodePipeline console and provides a link to the execution
entity of the external action.


=head2 RevisionUrlTemplate => Str

  The URL returned to the AWS CodePipeline console that contains a link
to the page where customers can update or change the configuration of
the external action.


=head2 ThirdPartyConfigurationUrl => Str

  The URL of a sign-up page where users can sign up for an external
service and perform initial configuration of the action provided by
that service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

