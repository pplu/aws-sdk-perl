
package Paws::OpsWorksCM::CreateBackup;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has ServerName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorksCM::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBackup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorksCM::CreateBackupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::CreateBackup - Arguments for method CreateBackup on L<Paws::OpsWorksCM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBackup on the
L<AWS OpsWorks CM|Paws::OpsWorksCM> service. Use the attributes of this class
as arguments to method CreateBackup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBackup.

=head1 SYNOPSIS

    my $opsworks-cm = Paws->service('OpsWorksCM');
    my $CreateBackupResponse = $opsworks -cm->CreateBackup(
      ServerName  => 'MyServerName',
      Description => 'MyString',       # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Backup = $CreateBackupResponse->Backup;

    # Returns a L<Paws::OpsWorksCM::CreateBackupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/opsworks-cm/latest/APIReference/API_CreateBackup.html>

=head1 ATTRIBUTES


=head2 Description => Str

A user-defined description of the backup.



=head2 B<REQUIRED> ServerName => Str

The name of the server that you want to back up.



=head2 Tags => ArrayRef[L<Paws::OpsWorksCM::Tag>]

A map that contains tag keys and tag values to attach to an AWS
OpsWorks-CM server backup.

=over

=item *

The key cannot be empty.

=item *

The key can be a maximum of 127 characters, and can contain only
Unicode letters, numbers, or separators, or the following special
characters: C<+ - = . _ : />

=item *

The value can be a maximum 255 characters, and contain only Unicode
letters, numbers, or separators, or the following special characters:
C<+ - = . _ : />

=item *

Leading and trailing white spaces are trimmed from both the key and
value.

=item *

A maximum of 50 user-applied tags is allowed for tag-supported AWS
OpsWorks-CM resources.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBackup in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

