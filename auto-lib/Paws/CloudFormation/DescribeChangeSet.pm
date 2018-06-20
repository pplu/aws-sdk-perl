
package Paws::CloudFormation::DescribeChangeSet;
  use Moose;
  has ChangeSetName => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeChangeSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::DescribeChangeSetOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeChangeSetResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeChangeSet - Arguments for method DescribeChangeSet on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeChangeSet on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method DescribeChangeSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeChangeSet.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $DescribeChangeSetOutput = $cloudformation->DescribeChangeSet(
      ChangeSetName => 'MyChangeSetNameOrId',
      NextToken     => 'MyNextToken',           # OPTIONAL
      StackName     => 'MyStackNameOrId',       # OPTIONAL
    );

    # Results:
    my $Capabilities          = $DescribeChangeSetOutput->Capabilities;
    my $ChangeSetId           = $DescribeChangeSetOutput->ChangeSetId;
    my $ChangeSetName         = $DescribeChangeSetOutput->ChangeSetName;
    my $Changes               = $DescribeChangeSetOutput->Changes;
    my $CreationTime          = $DescribeChangeSetOutput->CreationTime;
    my $Description           = $DescribeChangeSetOutput->Description;
    my $ExecutionStatus       = $DescribeChangeSetOutput->ExecutionStatus;
    my $NextToken             = $DescribeChangeSetOutput->NextToken;
    my $NotificationARNs      = $DescribeChangeSetOutput->NotificationARNs;
    my $Parameters            = $DescribeChangeSetOutput->Parameters;
    my $RollbackConfiguration = $DescribeChangeSetOutput->RollbackConfiguration;
    my $StackId               = $DescribeChangeSetOutput->StackId;
    my $StackName             = $DescribeChangeSetOutput->StackName;
    my $Status                = $DescribeChangeSetOutput->Status;
    my $StatusReason          = $DescribeChangeSetOutput->StatusReason;
    my $Tags                  = $DescribeChangeSetOutput->Tags;

    # Returns a L<Paws::CloudFormation::DescribeChangeSetOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/DescribeChangeSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeSetName => Str

The name or Amazon Resource Name (ARN) of the change set that you want
to describe.



=head2 NextToken => Str

A string (provided by the DescribeChangeSet response output) that
identifies the next page of information that you want to retrieve.



=head2 StackName => Str

If you specified the name of a change set, specify the stack name or ID
(ARN) of the change set you want to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeChangeSet in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

