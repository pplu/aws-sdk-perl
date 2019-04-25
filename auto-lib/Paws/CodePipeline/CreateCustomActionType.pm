
package Paws::CodePipeline::CreateCustomActionType;
  use Moose;
  has Category => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'category' , required => 1);
  has ConfigurationProperties => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::ActionConfigurationProperty]', traits => ['NameInRequest'], request_name => 'configurationProperties' );
  has InputArtifactDetails => (is => 'ro', isa => 'Paws::CodePipeline::ArtifactDetails', traits => ['NameInRequest'], request_name => 'inputArtifactDetails' , required => 1);
  has OutputArtifactDetails => (is => 'ro', isa => 'Paws::CodePipeline::ArtifactDetails', traits => ['NameInRequest'], request_name => 'outputArtifactDetails' , required => 1);
  has Provider => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'provider' , required => 1);
  has Settings => (is => 'ro', isa => 'Paws::CodePipeline::ActionTypeSettings', traits => ['NameInRequest'], request_name => 'settings' );
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCustomActionType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::CreateCustomActionTypeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::CreateCustomActionType - Arguments for method CreateCustomActionType on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCustomActionType on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method CreateCustomActionType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCustomActionType.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $CreateCustomActionTypeOutput = $codepipeline->CreateCustomActionType(
      Category             => 'Source',
      InputArtifactDetails => {
        MaximumCount => 1,    # max: 5
        MinimumCount => 1,    # max: 5

      },
      OutputArtifactDetails => {
        MaximumCount => 1,    # max: 5
        MinimumCount => 1,    # max: 5

      },
      Provider                => 'MyActionProvider',
      Version                 => 'MyVersion',
      ConfigurationProperties => [
        {
          Key      => 1,
          Name     => 'MyActionConfigurationKey',    # min: 1, max: 50
          Required => 1,
          Secret   => 1,
          Description => 'MyDescription',    # min: 1, max: 160; OPTIONAL
          Queryable   => 1,
          Type => 'String',    # values: String, Number, Boolean; OPTIONAL
        },
        ...
      ],                       # OPTIONAL
      Settings => {
        EntityUrlTemplate    => 'MyUrlTemplate',   # min: 1, max: 2048; OPTIONAL
        ExecutionUrlTemplate => 'MyUrlTemplate',   # min: 1, max: 2048; OPTIONAL
        RevisionUrlTemplate  => 'MyUrlTemplate',   # min: 1, max: 2048; OPTIONAL
        ThirdPartyConfigurationUrl => 'MyUrl',     # min: 1, max: 2048; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ActionType = $CreateCustomActionTypeOutput->ActionType;

    # Returns a L<Paws::CodePipeline::CreateCustomActionTypeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/CreateCustomActionType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Category => Str

The category of the custom action, such as a build action or a test
action.

Although Source and Approval are listed as valid values, they are not
currently functional. These values are reserved for future use.

Valid values are: C<"Source">, C<"Build">, C<"Deploy">, C<"Test">, C<"Invoke">, C<"Approval">

=head2 ConfigurationProperties => ArrayRef[L<Paws::CodePipeline::ActionConfigurationProperty>]

The configuration properties for the custom action.

You can refer to a name in the configuration properties of the custom
action within the URL templates by following the format of
{Config:name}, as long as the configuration property is both required
and not secret. For more information, see Create a Custom Action for a
Pipeline
(http://docs.aws.amazon.com/codepipeline/latest/userguide/how-to-create-custom-action.html).



=head2 B<REQUIRED> InputArtifactDetails => L<Paws::CodePipeline::ArtifactDetails>

The details of the input artifact for the action, such as its commit
ID.



=head2 B<REQUIRED> OutputArtifactDetails => L<Paws::CodePipeline::ArtifactDetails>

The details of the output artifact of the action, such as its commit
ID.



=head2 B<REQUIRED> Provider => Str

The provider of the service used in the custom action, such as AWS
CodeDeploy.



=head2 Settings => L<Paws::CodePipeline::ActionTypeSettings>

Returns information about the settings for an action type.



=head2 B<REQUIRED> Version => Str

The version identifier of the custom action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCustomActionType in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

