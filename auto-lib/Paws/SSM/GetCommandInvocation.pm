
package Paws::SSM::GetCommandInvocation;
  use Moose;
  has CommandId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has PluginName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCommandInvocation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::GetCommandInvocationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetCommandInvocation - Arguments for method GetCommandInvocation on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCommandInvocation on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method GetCommandInvocation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCommandInvocation.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $GetCommandInvocationResult = $ssm->GetCommandInvocation(
      CommandId  => 'MyCommandId',
      InstanceId => 'MyInstanceId',
      PluginName => 'MyCommandPluginName',    # OPTIONAL
    );

    # Results:
    my $CloudWatchOutputConfig =
      $GetCommandInvocationResult->CloudWatchOutputConfig;
    my $CommandId       = $GetCommandInvocationResult->CommandId;
    my $Comment         = $GetCommandInvocationResult->Comment;
    my $DocumentName    = $GetCommandInvocationResult->DocumentName;
    my $DocumentVersion = $GetCommandInvocationResult->DocumentVersion;
    my $ExecutionElapsedTime =
      $GetCommandInvocationResult->ExecutionElapsedTime;
    my $ExecutionEndDateTime =
      $GetCommandInvocationResult->ExecutionEndDateTime;
    my $ExecutionStartDateTime =
      $GetCommandInvocationResult->ExecutionStartDateTime;
    my $InstanceId   = $GetCommandInvocationResult->InstanceId;
    my $PluginName   = $GetCommandInvocationResult->PluginName;
    my $ResponseCode = $GetCommandInvocationResult->ResponseCode;
    my $StandardErrorContent =
      $GetCommandInvocationResult->StandardErrorContent;
    my $StandardErrorUrl = $GetCommandInvocationResult->StandardErrorUrl;
    my $StandardOutputContent =
      $GetCommandInvocationResult->StandardOutputContent;
    my $StandardOutputUrl = $GetCommandInvocationResult->StandardOutputUrl;
    my $Status            = $GetCommandInvocationResult->Status;
    my $StatusDetails     = $GetCommandInvocationResult->StatusDetails;

    # Returns a L<Paws::SSM::GetCommandInvocationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/GetCommandInvocation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CommandId => Str

(Required) The parent command ID of the invocation plugin.



=head2 B<REQUIRED> InstanceId => Str

(Required) The ID of the managed instance targeted by the command. A
managed instance can be an Amazon EC2 instance or an instance in your
hybrid environment that is configured for Systems Manager.



=head2 PluginName => Str

(Optional) The name of the plugin for which you want detailed results.
If the document contains only one plugin, the name can be omitted and
the details will be returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCommandInvocation in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

