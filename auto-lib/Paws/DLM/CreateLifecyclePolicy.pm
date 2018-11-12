
package Paws::DLM::CreateLifecyclePolicy;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has PolicyDetails => (is => 'ro', isa => 'Paws::DLM::PolicyDetails', required => 1);
  has State => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLifecyclePolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/policies');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DLM::CreateLifecyclePolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM::CreateLifecyclePolicy - Arguments for method CreateLifecyclePolicy on L<Paws::DLM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLifecyclePolicy on the
L<Amazon Data Lifecycle Manager|Paws::DLM> service. Use the attributes of this class
as arguments to method CreateLifecyclePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLifecyclePolicy.

=head1 SYNOPSIS

    my $dlm = Paws->service('DLM');
    my $CreateLifecyclePolicyResponse = $dlm->CreateLifecyclePolicy(
      Description      => 'MyPolicyDescription',
      ExecutionRoleArn => 'MyExecutionRoleArn',
      PolicyDetails    => {
        ResourceTypes => [
          'VOLUME', ...    # values: VOLUME
        ],                 # min: 1, max: 1; OPTIONAL
        Schedules => [
          {
            CopyTags   => 1,    # OPTIONAL
            CreateRule => {
              Interval     => 1,                    # min: 1
              IntervalUnit => 'HOURS',              # values: HOURS
              Times        => [ 'MyTime', ... ],    # max: 1; OPTIONAL
            },    # OPTIONAL
            Name       => 'MyScheduleName',    # max: 500; OPTIONAL
            RetainRule => {
              Count => 1,                      # min: 1, max: 1000

            },    # OPTIONAL
            TagsToAdd => [
              {
                Key   => 'MyString',
                Value => 'MyString',

              },
              ...
            ],    # max: 50; OPTIONAL
          },
          ...
        ],        # min: 1, max: 1; OPTIONAL
        TargetTags => [
          {
            Key   => 'MyString',
            Value => 'MyString',

          },
          ...
        ],        # min: 1, max: 50; OPTIONAL
      },
      State => 'ENABLED',

    );

    # Results:
    my $PolicyId = $CreateLifecyclePolicyResponse->PolicyId;

    # Returns a L<Paws::DLM::CreateLifecyclePolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dlm/CreateLifecyclePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Description => Str

A description of the lifecycle policy. The characters ^[0-9A-Za-z _-]+$
are supported.



=head2 B<REQUIRED> ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role used to run the
operations specified by the lifecycle policy.



=head2 B<REQUIRED> PolicyDetails => L<Paws::DLM::PolicyDetails>

The configuration details of the lifecycle policy.

Target tags cannot be re-used across lifecycle policies.



=head2 B<REQUIRED> State => Str

The desired activation state of the lifecycle policy after creation.

Valid values are: C<"ENABLED">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLifecyclePolicy in L<Paws::DLM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

