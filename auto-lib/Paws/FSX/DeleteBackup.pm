
package Paws::FSX::DeleteBackup;
  use Moose;
  has BackupId => (is => 'ro', isa => 'Str', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBackup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::DeleteBackupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DeleteBackup - Arguments for method DeleteBackup on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBackup on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method DeleteBackup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBackup.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $DeleteBackupResponse = $fsx->DeleteBackup(
      BackupId           => 'MyBackupId',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
    );

    # Results:
    my $BackupId  = $DeleteBackupResponse->BackupId;
    my $Lifecycle = $DeleteBackupResponse->Lifecycle;

    # Returns a L<Paws::FSX::DeleteBackupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/DeleteBackup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupId => Str

The ID of the backup you want to delete.



=head2 ClientRequestToken => Str

(Optional) A string of up to 64 ASCII characters that Amazon FSx uses
to ensure idempotent deletion. This is automatically filled on your
behalf when using the AWS CLI or SDK.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBackup in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

