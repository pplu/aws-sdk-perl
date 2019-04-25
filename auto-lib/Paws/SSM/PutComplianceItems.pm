
package Paws::SSM::PutComplianceItems;
  use Moose;
  has ComplianceType => (is => 'ro', isa => 'Str', required => 1);
  has ExecutionSummary => (is => 'ro', isa => 'Paws::SSM::ComplianceExecutionSummary', required => 1);
  has ItemContentHash => (is => 'ro', isa => 'Str');
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::SSM::ComplianceItemEntry]', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutComplianceItems');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::PutComplianceItemsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::PutComplianceItems - Arguments for method PutComplianceItems on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutComplianceItems on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method PutComplianceItems.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutComplianceItems.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $PutComplianceItemsResult = $ssm->PutComplianceItems(
      ComplianceType   => 'MyComplianceTypeName',
      ExecutionSummary => {
        ExecutionTime => '1970-01-01T01:00:00',
        ExecutionId   => 'MyComplianceExecutionId',      # max: 100; OPTIONAL
        ExecutionType => 'MyComplianceExecutionType',    # max: 50; OPTIONAL
      },
      Items => [
        {
          Severity => 'CRITICAL'
          ,    # values: CRITICAL, HIGH, MEDIUM, LOW, INFORMATIONAL, UNSPECIFIED
          Status  => 'COMPLIANT',    # values: COMPLIANT, NON_COMPLIANT
          Details => {
            'MyAttributeName' =>
              'MyAttributeValue',    # key: min: 1, max: 64, value: max: 4096
          },    # OPTIONAL
          Id    => 'MyComplianceItemId',       # min: 1, max: 100; OPTIONAL
          Title => 'MyComplianceItemTitle',    # max: 500; OPTIONAL
        },
        ...
      ],
      ResourceId      => 'MyComplianceResourceId',
      ResourceType    => 'MyComplianceResourceType',
      ItemContentHash => 'MyComplianceItemContentHash',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/PutComplianceItems>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComplianceType => Str

Specify the compliance type. For example, specify Association (for a
State Manager association), Patch, or Custom:C<string>.



=head2 B<REQUIRED> ExecutionSummary => L<Paws::SSM::ComplianceExecutionSummary>

A summary of the call execution that includes an execution ID, the type
of execution (for example, C<Command>), and the date/time of the
execution using a datetime object that is saved in the following
format: yyyy-MM-dd'T'HH:mm:ss'Z'.



=head2 ItemContentHash => Str

MD5 or SHA-256 content hash. The content hash is used to determine if
existing information should be overwritten or ignored. If the content
hashes match, the request to put compliance information is ignored.



=head2 B<REQUIRED> Items => ArrayRef[L<Paws::SSM::ComplianceItemEntry>]

Information about the compliance as defined by the resource type. For
example, for a patch compliance type, C<Items> includes information
about the PatchSeverity, Classification, etc.



=head2 B<REQUIRED> ResourceId => Str

Specify an ID for this resource. For a managed instance, this is the
instance ID.



=head2 B<REQUIRED> ResourceType => Str

Specify the type of resource. C<ManagedInstance> is currently the only
supported resource type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutComplianceItems in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

