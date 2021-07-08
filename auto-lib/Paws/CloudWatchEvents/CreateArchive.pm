
package Paws::CloudWatchEvents::CreateArchive;
  use Moose;
  has ArchiveName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has EventPattern => (is => 'ro', isa => 'Str');
  has EventSourceArn => (is => 'ro', isa => 'Str', required => 1);
  has RetentionDays => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateArchive');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::CreateArchiveResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::CreateArchive - Arguments for method CreateArchive on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateArchive on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method CreateArchive.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateArchive.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $CreateArchiveResponse = $events->CreateArchive(
      ArchiveName    => 'MyArchiveName',
      EventSourceArn => 'MyArn',
      Description    => 'MyArchiveDescription',    # OPTIONAL
      EventPattern   => 'MyEventPattern',          # OPTIONAL
      RetentionDays  => 1,                         # OPTIONAL
    );

    # Results:
    my $ArchiveArn   = $CreateArchiveResponse->ArchiveArn;
    my $CreationTime = $CreateArchiveResponse->CreationTime;
    my $State        = $CreateArchiveResponse->State;
    my $StateReason  = $CreateArchiveResponse->StateReason;

    # Returns a L<Paws::CloudWatchEvents::CreateArchiveResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/CreateArchive>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ArchiveName => Str

The name for the archive to create.



=head2 Description => Str

A description for the archive.



=head2 EventPattern => Str

An event pattern to use to filter events sent to the archive.



=head2 B<REQUIRED> EventSourceArn => Str

The ARN of the event source associated with the archive.



=head2 RetentionDays => Int

The number of days to retain events for. Default value is 0. If set to
0, events are retained indefinitely




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateArchive in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

