
package Paws::CloudHSMv2::ModifyBackupAttributes;
  use Moose;
  has BackupId => (is => 'ro', isa => 'Str', required => 1);
  has NeverExpires => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyBackupAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudHSMv2::ModifyBackupAttributesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::ModifyBackupAttributes - Arguments for method ModifyBackupAttributes on L<Paws::CloudHSMv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyBackupAttributes on the
L<AWS CloudHSM V2|Paws::CloudHSMv2> service. Use the attributes of this class
as arguments to method ModifyBackupAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyBackupAttributes.

=head1 SYNOPSIS

    my $cloudhsmv2 = Paws->service('CloudHSMv2');
    my $ModifyBackupAttributesResponse = $cloudhsmv2->ModifyBackupAttributes(
      BackupId     => 'MyBackupId',
      NeverExpires => 1,

    );

    # Results:
    my $Backup = $ModifyBackupAttributesResponse->Backup;

    # Returns a L<Paws::CloudHSMv2::ModifyBackupAttributesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2/ModifyBackupAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupId => Str

The identifier (ID) of the backup to modify. To find the ID of a
backup, use the DescribeBackups operation.



=head2 B<REQUIRED> NeverExpires => Bool

Specifies whether the service should exempt a backup from the retention
policy for the cluster. C<True> exempts a backup from the retention
policy. C<False> means the service applies the backup retention policy
defined at the cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyBackupAttributes in L<Paws::CloudHSMv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

