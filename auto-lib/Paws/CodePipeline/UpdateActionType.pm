
package Paws::CodePipeline::UpdateActionType;
  use Moose;
  has ActionType => (is => 'ro', isa => 'Paws::CodePipeline::ActionTypeDeclaration', traits => ['NameInRequest'], request_name => 'actionType' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateActionType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::UpdateActionType - Arguments for method UpdateActionType on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateActionType on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method UpdateActionType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateActionType.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    $codepipeline->UpdateActionType(
      ActionType => {
        Executor => {
          Configuration => {
            JobWorkerExecutorConfiguration => {
              PollingAccounts => [ 'MyAccountId', ... ]
              ,    # min: 1, max: 1000; OPTIONAL
              PollingServicePrincipals => [
                'MyServicePrincipal', ...    # min: 1, max: 128
              ],                             # min: 1, max: 10; OPTIONAL
            },    # OPTIONAL
            LambdaExecutorConfiguration => {
              LambdaFunctionArn => 'MyLambdaFunctionArn',    # min: 1, max: 140

            },    # OPTIONAL
          },
          Type       => 'JobWorker',    # values: JobWorker, Lambda
          JobTimeout => 1,              # min: 60, max: 43200; OPTIONAL
          PolicyStatementsTemplate =>
            'MyPolicyStatementsTemplate',    # min: 1, max: 2048; OPTIONAL
        },
        Id => {
          Category =>
            'Source',    # values: Source, Build, Deploy, Test, Invoke, Approval
          Owner    => 'MyActionTypeOwner',
          Provider => 'MyActionProvider',    # min: 1, max: 35
          Version  => 'MyVersion',           # min: 1, max: 9

        },
        InputArtifactDetails => {
          MaximumCount => 1,                 # max: 10
          MinimumCount => 1,                 # max: 10

        },
        OutputArtifactDetails => {
          MaximumCount => 1,                 # max: 10
          MinimumCount => 1,                 # max: 10

        },
        Description => 'MyActionTypeDescription',  # min: 1, max: 1024; OPTIONAL
        Permissions => {
          AllowedAccounts => [ 'MyAllowedAccount', ... ],    # min: 1, max: 1000

        },    # OPTIONAL
        Properties => [
          {
            Key      => 1,
            Name     => 'MyActionConfigurationKey',    # min: 1, max: 50
            NoEcho   => 1,
            Optional => 1,
            Description => 'MyPropertyDescription', # min: 1, max: 250; OPTIONAL
            Queryable   => 1,
          },
          ...
        ],                                          # max: 10; OPTIONAL
        Urls => {
          ConfigurationUrl     => 'MyUrl',         # min: 1, max: 2048; OPTIONAL
          EntityUrlTemplate    => 'MyUrlTemplate', # min: 1, max: 2048; OPTIONAL
          ExecutionUrlTemplate => 'MyUrlTemplate', # min: 1, max: 2048; OPTIONAL
          RevisionUrlTemplate  => 'MyUrlTemplate', # min: 1, max: 2048; OPTIONAL
        },    # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/UpdateActionType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionType => L<Paws::CodePipeline::ActionTypeDeclaration>

The action type definition for the action type to be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateActionType in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

