
package Paws::SageMaker::CreateTrialComponent;
  use Moose;
  has DisplayName => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has InputArtifacts => (is => 'ro', isa => 'Paws::SageMaker::TrialComponentArtifacts');
  has MetadataProperties => (is => 'ro', isa => 'Paws::SageMaker::MetadataProperties');
  has OutputArtifacts => (is => 'ro', isa => 'Paws::SageMaker::TrialComponentArtifacts');
  has Parameters => (is => 'ro', isa => 'Paws::SageMaker::TrialComponentParameters');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Paws::SageMaker::TrialComponentStatus');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has TrialComponentName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTrialComponent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateTrialComponentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateTrialComponent - Arguments for method CreateTrialComponent on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTrialComponent on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateTrialComponent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTrialComponent.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateTrialComponentResponse = $api . sagemaker->CreateTrialComponent(
      TrialComponentName => 'MyExperimentEntityName',
      DisplayName        => 'MyExperimentEntityName',    # OPTIONAL
      EndTime            => '1970-01-01T01:00:00',       # OPTIONAL
      InputArtifacts     => {
        'MyTrialComponentKey64' => {
          Value     => 'MyTrialComponentArtifactValue',    # max: 2048
          MediaType => 'MyMediaType',                      # max: 64; OPTIONAL
        },    # key: max: 64
      },    # OPTIONAL
      MetadataProperties => {
        CommitId    => 'MyMetadataPropertyValue',    # max: 1024; OPTIONAL
        GeneratedBy => 'MyMetadataPropertyValue',    # max: 1024; OPTIONAL
        ProjectId   => 'MyMetadataPropertyValue',    # max: 1024; OPTIONAL
        Repository  => 'MyMetadataPropertyValue',    # max: 1024; OPTIONAL
      },    # OPTIONAL
      OutputArtifacts => {
        'MyTrialComponentKey64' => {
          Value     => 'MyTrialComponentArtifactValue',    # max: 2048
          MediaType => 'MyMediaType',                      # max: 64; OPTIONAL
        },    # key: max: 64
      },    # OPTIONAL
      Parameters => {
        'MyTrialComponentKey256' => {
          NumberValue => 1,                           # OPTIONAL
          StringValue => 'MyStringParameterValue',    # max: 256; OPTIONAL
        },    # key: max: 256
      },    # OPTIONAL
      StartTime => '1970-01-01T01:00:00',    # OPTIONAL
      Status    => {
        Message       => 'MyTrialComponentStatusMessage',  # max: 1024; OPTIONAL
        PrimaryStatus => 'InProgress'
        ,   # values: InProgress, Completed, Failed, Stopping, Stopped; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $TrialComponentArn = $CreateTrialComponentResponse->TrialComponentArn;

    # Returns a L<Paws::SageMaker::CreateTrialComponentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateTrialComponent>

=head1 ATTRIBUTES


=head2 DisplayName => Str

The name of the component as displayed. The name doesn't need to be
unique. If C<DisplayName> isn't specified, C<TrialComponentName> is
displayed.



=head2 EndTime => Str

When the component ended.



=head2 InputArtifacts => L<Paws::SageMaker::TrialComponentArtifacts>

The input artifacts for the component. Examples of input artifacts are
datasets, algorithms, hyperparameters, source code, and instance types.



=head2 MetadataProperties => L<Paws::SageMaker::MetadataProperties>





=head2 OutputArtifacts => L<Paws::SageMaker::TrialComponentArtifacts>

The output artifacts for the component. Examples of output artifacts
are metrics, snapshots, logs, and images.



=head2 Parameters => L<Paws::SageMaker::TrialComponentParameters>

The hyperparameters for the component.



=head2 StartTime => Str

When the component started.



=head2 Status => L<Paws::SageMaker::TrialComponentStatus>

The status of the component. States include:

=over

=item *

InProgress

=item *

Completed

=item *

Failed

=back




=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

A list of tags to associate with the component. You can use Search API
to search on the tags.



=head2 B<REQUIRED> TrialComponentName => Str

The name of the component. The name must be unique in your AWS account
and is not case-sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTrialComponent in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

