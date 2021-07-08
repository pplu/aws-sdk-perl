
package Paws::CloudWatchEvents::UpdateArchive;
  use Moose;
  has ArchiveName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has EventPattern => (is => 'ro', isa => 'Str');
  has RetentionDays => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateArchive');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::UpdateArchiveResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::UpdateArchive - Arguments for method UpdateArchive on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateArchive on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method UpdateArchive.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateArchive.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $UpdateArchiveResponse = $events->UpdateArchive(
      ArchiveName   => 'MyArchiveName',
      Description   => 'MyArchiveDescription',    # OPTIONAL
      EventPattern  => 'MyEventPattern',          # OPTIONAL
      RetentionDays => 1,                         # OPTIONAL
    );

    # Results:
    my $ArchiveArn   = $UpdateArchiveResponse->ArchiveArn;
    my $CreationTime = $UpdateArchiveResponse->CreationTime;
    my $State        = $UpdateArchiveResponse->State;
    my $StateReason  = $UpdateArchiveResponse->StateReason;

    # Returns a L<Paws::CloudWatchEvents::UpdateArchiveResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/UpdateArchive>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ArchiveName => Str

The name of the archive to update.



=head2 Description => Str

The description for the archive.



=head2 EventPattern => Str

The event pattern to use to filter events sent to the archive.



=head2 RetentionDays => Int

The number of days to retain events in the archive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateArchive in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

