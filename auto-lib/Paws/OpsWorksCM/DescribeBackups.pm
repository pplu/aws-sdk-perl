
package Paws::OpsWorksCM::DescribeBackups;
  use Moose;
  has BackupId => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ServerName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBackups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorksCM::DescribeBackupsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::DescribeBackups - Arguments for method DescribeBackups on L<Paws::OpsWorksCM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBackups on the
L<AWS OpsWorks for Chef Automate|Paws::OpsWorksCM> service. Use the attributes of this class
as arguments to method DescribeBackups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBackups.

=head1 SYNOPSIS

    my $opsworks-cm = Paws->service('OpsWorksCM');
    my $DescribeBackupsResponse = $opsworks -cm->DescribeBackups(
      BackupId   => 'MyBackupId',      # OPTIONAL
      MaxResults => 1,                 # OPTIONAL
      NextToken  => 'MyNextToken',     # OPTIONAL
      ServerName => 'MyServerName',    # OPTIONAL
    );

    # Results:
    my $Backups   = $DescribeBackupsResponse->Backups;
    my $NextToken = $DescribeBackupsResponse->NextToken;

    # Returns a L<Paws::OpsWorksCM::DescribeBackupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/opsworks-cm/latest/APIReference/API_DescribeBackups.html>

=head1 ATTRIBUTES


=head2 BackupId => Str

Describes a single backup.



=head2 MaxResults => Int

This is not currently implemented for C<DescribeBackups> requests.



=head2 NextToken => Str

This is not currently implemented for C<DescribeBackups> requests.



=head2 ServerName => Str

Returns backups for the server with the specified ServerName.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBackups in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

