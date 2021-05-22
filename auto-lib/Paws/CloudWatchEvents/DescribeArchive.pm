
package Paws::CloudWatchEvents::DescribeArchive;
  use Moose;
  has ArchiveName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeArchive');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::DescribeArchiveResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::DescribeArchive - Arguments for method DescribeArchive on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeArchive on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method DescribeArchive.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeArchive.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $DescribeArchiveResponse = $events->DescribeArchive(
      ArchiveName => 'MyArchiveName',

    );

    # Results:
    my $ArchiveArn     = $DescribeArchiveResponse->ArchiveArn;
    my $ArchiveName    = $DescribeArchiveResponse->ArchiveName;
    my $CreationTime   = $DescribeArchiveResponse->CreationTime;
    my $Description    = $DescribeArchiveResponse->Description;
    my $EventCount     = $DescribeArchiveResponse->EventCount;
    my $EventPattern   = $DescribeArchiveResponse->EventPattern;
    my $EventSourceArn = $DescribeArchiveResponse->EventSourceArn;
    my $RetentionDays  = $DescribeArchiveResponse->RetentionDays;
    my $SizeBytes      = $DescribeArchiveResponse->SizeBytes;
    my $State          = $DescribeArchiveResponse->State;
    my $StateReason    = $DescribeArchiveResponse->StateReason;

    # Returns a L<Paws::CloudWatchEvents::DescribeArchiveResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/DescribeArchive>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ArchiveName => Str

The name of the archive to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeArchive in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

