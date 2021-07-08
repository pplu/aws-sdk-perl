
package Paws::CloudFormation::RecordHandlerProgress;
  use Moose;
  has BearerToken => (is => 'ro', isa => 'Str', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has CurrentOperationStatus => (is => 'ro', isa => 'Str');
  has ErrorCode => (is => 'ro', isa => 'Str');
  has OperationStatus => (is => 'ro', isa => 'Str', required => 1);
  has ResourceModel => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RecordHandlerProgress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::RecordHandlerProgressOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RecordHandlerProgressResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::RecordHandlerProgress - Arguments for method RecordHandlerProgress on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RecordHandlerProgress on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method RecordHandlerProgress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RecordHandlerProgress.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $RecordHandlerProgressOutput = $cloudformation->RecordHandlerProgress(
      BearerToken            => 'MyClientToken',
      OperationStatus        => 'PENDING',
      ClientRequestToken     => 'MyClientRequestToken',    # OPTIONAL
      CurrentOperationStatus => 'PENDING',                 # OPTIONAL
      ErrorCode              => 'NotUpdatable',            # OPTIONAL
      ResourceModel          => 'MyResourceModel',         # OPTIONAL
      StatusMessage          => 'MyStatusMessage',         # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/RecordHandlerProgress>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BearerToken => Str

Reserved for use by the CloudFormation CLI
(https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html).



=head2 ClientRequestToken => Str

Reserved for use by the CloudFormation CLI
(https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html).



=head2 CurrentOperationStatus => Str

Reserved for use by the CloudFormation CLI
(https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html).

Valid values are: C<"PENDING">, C<"IN_PROGRESS">, C<"SUCCESS">, C<"FAILED">

=head2 ErrorCode => Str

Reserved for use by the CloudFormation CLI
(https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html).

Valid values are: C<"NotUpdatable">, C<"InvalidRequest">, C<"AccessDenied">, C<"InvalidCredentials">, C<"AlreadyExists">, C<"NotFound">, C<"ResourceConflict">, C<"Throttling">, C<"ServiceLimitExceeded">, C<"NotStabilized">, C<"GeneralServiceException">, C<"ServiceInternalError">, C<"NetworkFailure">, C<"InternalFailure">, C<"InvalidTypeConfiguration">

=head2 B<REQUIRED> OperationStatus => Str

Reserved for use by the CloudFormation CLI
(https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html).

Valid values are: C<"PENDING">, C<"IN_PROGRESS">, C<"SUCCESS">, C<"FAILED">

=head2 ResourceModel => Str

Reserved for use by the CloudFormation CLI
(https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html).



=head2 StatusMessage => Str

Reserved for use by the CloudFormation CLI
(https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RecordHandlerProgress in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

