package Paws::SSM::ResourceDataSyncItem;
  use Moose;
  has LastStatus => (is => 'ro', isa => 'Str');
  has LastSuccessfulSyncTime => (is => 'ro', isa => 'Str');
  has LastSyncStatusMessage => (is => 'ro', isa => 'Str');
  has LastSyncTime => (is => 'ro', isa => 'Str');
  has S3Destination => (is => 'ro', isa => 'Paws::SSM::ResourceDataSyncS3Destination');
  has SyncCreatedTime => (is => 'ro', isa => 'Str');
  has SyncName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ResourceDataSyncItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::ResourceDataSyncItem object:

  $service_obj->Method(Att1 => { LastStatus => $value, ..., SyncName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::ResourceDataSyncItem object:

  $result = $service_obj->Method(...);
  $result->Att1->LastStatus

=head1 DESCRIPTION

Information about a Resource Data Sync configuration, including its
current status and last successful sync.

=head1 ATTRIBUTES


=head2 LastStatus => Str

  The status reported by the last sync.


=head2 LastSuccessfulSyncTime => Str

  The last time the sync operations returned a status of C<SUCCESSFUL>
(UTC).


=head2 LastSyncStatusMessage => Str

  The status message details reported by the last sync.


=head2 LastSyncTime => Str

  The last time the configuration attempted to sync (UTC).


=head2 S3Destination => L<Paws::SSM::ResourceDataSyncS3Destination>

  Configuration information for the target Amazon S3 bucket.


=head2 SyncCreatedTime => Str

  The date and time the configuration was created (UTC).


=head2 SyncName => Str

  The name of the Resource Data Sync.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

