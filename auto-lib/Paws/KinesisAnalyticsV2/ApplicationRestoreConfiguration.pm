package Paws::KinesisAnalyticsV2::ApplicationRestoreConfiguration;
  use Moose;
  has ApplicationRestoreType => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::ApplicationRestoreConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::ApplicationRestoreConfiguration object:

  $service_obj->Method(Att1 => { ApplicationRestoreType => $value, ..., SnapshotName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::ApplicationRestoreConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationRestoreType

=head1 DESCRIPTION

Specifies the method and snapshot to use when restarting an application
using previously saved application state.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationRestoreType => Str

  Specifies how the application should be restored.


=head2 SnapshotName => Str

  The identifier of an existing snapshot of application state to use to
restart an application. The application uses this value if
C<RESTORE_FROM_CUSTOM_SNAPSHOT> is specified for the
C<ApplicationRestoreType>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

