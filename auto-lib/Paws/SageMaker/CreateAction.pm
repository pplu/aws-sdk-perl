
package Paws::SageMaker::CreateAction;
  use Moose;
  has ActionName => (is => 'ro', isa => 'Str', required => 1);
  has ActionType => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has MetadataProperties => (is => 'ro', isa => 'Paws::SageMaker::MetadataProperties');
  has Properties => (is => 'ro', isa => 'Paws::SageMaker::LineageEntityParameters');
  has Source => (is => 'ro', isa => 'Paws::SageMaker::ActionSource', required => 1);
  has Status => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateActionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateAction - Arguments for method CreateAction on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAction on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAction.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateActionResponse = $api . sagemaker->CreateAction(
      ActionName => 'MyExperimentEntityName',
      ActionType => 'MyString256',
      Source     => {
        SourceUri  => 'MyString2048',    # max: 2048
        SourceId   => 'MyString256',     # max: 256
        SourceType => 'MyString256',     # max: 256
      },
      Description        => 'MyExperimentDescription',    # OPTIONAL
      MetadataProperties => {
        CommitId    => 'MyMetadataPropertyValue',         # max: 1024; OPTIONAL
        GeneratedBy => 'MyMetadataPropertyValue',         # max: 1024; OPTIONAL
        ProjectId   => 'MyMetadataPropertyValue',         # max: 1024; OPTIONAL
        Repository  => 'MyMetadataPropertyValue',         # max: 1024; OPTIONAL
      },    # OPTIONAL
      Properties => {
        'MyStringParameterValue' =>
          'MyStringParameterValue',    # key: max: 256, value: max: 256
      },    # OPTIONAL
      Status => 'Unknown',    # OPTIONAL
      Tags   => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ActionArn = $CreateActionResponse->ActionArn;

    # Returns a L<Paws::SageMaker::CreateActionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionName => Str

The name of the action. Must be unique to your account in an Amazon Web
Services Region.



=head2 B<REQUIRED> ActionType => Str

The action type.



=head2 Description => Str

The description of the action.



=head2 MetadataProperties => L<Paws::SageMaker::MetadataProperties>





=head2 Properties => L<Paws::SageMaker::LineageEntityParameters>

A list of properties to add to the action.



=head2 B<REQUIRED> Source => L<Paws::SageMaker::ActionSource>

The source type, ID, and URI.



=head2 Status => Str

The status of the action.

Valid values are: C<"Unknown">, C<"InProgress">, C<"Completed">, C<"Failed">, C<"Stopping">, C<"Stopped">

=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

A list of tags to apply to the action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAction in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

