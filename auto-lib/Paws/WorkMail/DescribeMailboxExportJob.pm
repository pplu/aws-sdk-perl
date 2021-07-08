
package Paws::WorkMail::DescribeMailboxExportJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMailboxExportJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::DescribeMailboxExportJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DescribeMailboxExportJob - Arguments for method DescribeMailboxExportJob on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMailboxExportJob on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method DescribeMailboxExportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMailboxExportJob.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $DescribeMailboxExportJobResponse = $workmail->DescribeMailboxExportJob(
      JobId          => 'MyMailboxExportJobId',
      OrganizationId => 'MyOrganizationId',

    );

    # Results:
    my $Description = $DescribeMailboxExportJobResponse->Description;
    my $EndTime     = $DescribeMailboxExportJobResponse->EndTime;
    my $EntityId    = $DescribeMailboxExportJobResponse->EntityId;
    my $ErrorInfo   = $DescribeMailboxExportJobResponse->ErrorInfo;
    my $EstimatedProgress =
      $DescribeMailboxExportJobResponse->EstimatedProgress;
    my $KmsKeyArn    = $DescribeMailboxExportJobResponse->KmsKeyArn;
    my $RoleArn      = $DescribeMailboxExportJobResponse->RoleArn;
    my $S3BucketName = $DescribeMailboxExportJobResponse->S3BucketName;
    my $S3Path       = $DescribeMailboxExportJobResponse->S3Path;
    my $S3Prefix     = $DescribeMailboxExportJobResponse->S3Prefix;
    my $StartTime    = $DescribeMailboxExportJobResponse->StartTime;
    my $State        = $DescribeMailboxExportJobResponse->State;

    # Returns a L<Paws::WorkMail::DescribeMailboxExportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/DescribeMailboxExportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The mailbox export job ID.



=head2 B<REQUIRED> OrganizationId => Str

The organization ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMailboxExportJob in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

