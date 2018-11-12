
package Paws::IoT::StartOnDemandAuditTask;
  use Moose;
  has TargetCheckNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'targetCheckNames', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartOnDemandAuditTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audit/tasks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::StartOnDemandAuditTaskResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::StartOnDemandAuditTask - Arguments for method StartOnDemandAuditTask on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartOnDemandAuditTask on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method StartOnDemandAuditTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartOnDemandAuditTask.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $StartOnDemandAuditTaskResponse = $iot->StartOnDemandAuditTask(
      TargetCheckNames => [ 'MyAuditCheckName', ... ],

    );

    # Results:
    my $TaskId = $StartOnDemandAuditTaskResponse->TaskId;

    # Returns a L<Paws::IoT::StartOnDemandAuditTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/StartOnDemandAuditTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TargetCheckNames => ArrayRef[Str|Undef]

Which checks are performed during the audit. The checks you specify
must be enabled for your account or an exception occurs. Use
C<DescribeAccountAuditConfiguration> to see the list of all checks
including those that are enabled or C<UpdateAccountAuditConfiguration>
to select which checks are enabled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartOnDemandAuditTask in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

