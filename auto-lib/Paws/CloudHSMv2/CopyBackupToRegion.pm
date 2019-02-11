
package Paws::CloudHSMv2::CopyBackupToRegion;
  use Moose;
  has BackupId => (is => 'ro', isa => 'Str', required => 1);
  has DestinationRegion => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyBackupToRegion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudHSMv2::CopyBackupToRegionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::CopyBackupToRegion - Arguments for method CopyBackupToRegion on L<Paws::CloudHSMv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyBackupToRegion on the
L<AWS CloudHSM V2|Paws::CloudHSMv2> service. Use the attributes of this class
as arguments to method CopyBackupToRegion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyBackupToRegion.

=head1 SYNOPSIS

    my $cloudhsmv2 = Paws->service('CloudHSMv2');
    my $CopyBackupToRegionResponse = $cloudhsmv2->CopyBackupToRegion(
      BackupId          => 'MyBackupId',
      DestinationRegion => 'MyRegion',

    );

    # Results:
    my $DestinationBackup = $CopyBackupToRegionResponse->DestinationBackup;

    # Returns a L<Paws::CloudHSMv2::CopyBackupToRegionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2/CopyBackupToRegion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupId => Str

The ID of the backup that will be copied to the destination region.



=head2 B<REQUIRED> DestinationRegion => Str

The AWS region that will contain your copied CloudHSM cluster backup.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyBackupToRegion in L<Paws::CloudHSMv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

