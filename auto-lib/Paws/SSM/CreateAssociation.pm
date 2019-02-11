
package Paws::SSM::CreateAssociation;
  use Moose;
  has AssociationName => (is => 'ro', isa => 'Str');
  has AutomationTargetParameterName => (is => 'ro', isa => 'Str');
  has ComplianceSeverity => (is => 'ro', isa => 'Str');
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has MaxConcurrency => (is => 'ro', isa => 'Str');
  has MaxErrors => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has OutputLocation => (is => 'ro', isa => 'Paws::SSM::InstanceAssociationOutputLocation');
  has Parameters => (is => 'ro', isa => 'Paws::SSM::Parameters');
  has ScheduleExpression => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAssociation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::CreateAssociationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CreateAssociation - Arguments for method CreateAssociation on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAssociation on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method CreateAssociation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAssociation.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $CreateAssociationResult = $ssm->CreateAssociation(
      Name            => 'MyDocumentName',
      AssociationName => 'MyAssociationName',    # OPTIONAL
      AutomationTargetParameterName =>
        'MyAutomationTargetParameterName',       # OPTIONAL
      ComplianceSeverity => 'CRITICAL',          # OPTIONAL
      DocumentVersion    => 'MyDocumentVersion', # OPTIONAL
      InstanceId         => 'MyInstanceId',      # OPTIONAL
      MaxConcurrency     => 'MyMaxConcurrency',  # OPTIONAL
      MaxErrors          => 'MyMaxErrors',       # OPTIONAL
      OutputLocation     => {
        S3Location => {
          OutputS3BucketName => 'MyS3BucketName',    # min: 3, max: 63; OPTIONAL
          OutputS3KeyPrefix  => 'MyS3KeyPrefix',     # max: 500; OPTIONAL
          OutputS3Region     => 'MyS3Region',        # min: 3, max: 20; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Parameters => { 'MyParameterName' => [ 'MyParameterValue', ... ], }
      ,     # OPTIONAL
      ScheduleExpression => 'MyScheduleExpression',    # OPTIONAL
      Targets            => [
        {
          Key => 'MyTargetKey',                  # min: 1, max: 128; OPTIONAL
          Values => [ 'MyTargetValue', ... ],    # max: 50; OPTIONAL
        },
        ...
      ],                                         # OPTIONAL
    );

    # Results:
    my $AssociationDescription =
      $CreateAssociationResult->AssociationDescription;

    # Returns a L<Paws::SSM::CreateAssociationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/CreateAssociation>

=head1 ATTRIBUTES


=head2 AssociationName => Str

Specify a descriptive name for the association.



=head2 AutomationTargetParameterName => Str

Specify the target for the association. This target is required for
associations that use an Automation document and target resources by
using rate controls.



=head2 ComplianceSeverity => Str

The severity level to assign to the association.

Valid values are: C<"CRITICAL">, C<"HIGH">, C<"MEDIUM">, C<"LOW">, C<"UNSPECIFIED">

=head2 DocumentVersion => Str

The document version you want to associate with the target(s). Can be a
specific version or the default version.



=head2 InstanceId => Str

The instance ID.



=head2 MaxConcurrency => Str

The maximum number of targets allowed to run the association at the
same time. You can specify a number, for example 10, or a percentage of
the target set, for example 10%. The default value is 100%, which means
all targets run the association at the same time.

If a new instance starts and attempts to execute an association while
Systems Manager is executing MaxConcurrency associations, the
association is allowed to run. During the next association interval,
the new instance will process its association within the limit
specified for MaxConcurrency.



=head2 MaxErrors => Str

The number of errors that are allowed before the system stops sending
requests to run the association on additional targets. You can specify
either an absolute number of errors, for example 10, or a percentage of
the target set, for example 10%. If you specify 3, for example, the
system stops sending requests when the fourth error is received. If you
specify 0, then the system stops sending requests after the first error
is returned. If you run an association on 50 instances and set MaxError
to 10%, then the system stops sending the request when the sixth error
is received.

Executions that are already running an association when MaxErrors is
reached are allowed to complete, but some of these executions may fail
as well. If you need to ensure that there won't be more than max-errors
failed executions, set MaxConcurrency to 1 so that executions proceed
one at a time.



=head2 B<REQUIRED> Name => Str

The name of the Systems Manager document.



=head2 OutputLocation => L<Paws::SSM::InstanceAssociationOutputLocation>

An Amazon S3 bucket where you want to store the output details of the
request.



=head2 Parameters => L<Paws::SSM::Parameters>

The parameters for the documents runtime configuration.



=head2 ScheduleExpression => Str

A cron expression when the association will be applied to the
target(s).



=head2 Targets => ArrayRef[L<Paws::SSM::Target>]

The targets (either instances or tags) for the association.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAssociation in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

