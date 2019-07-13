
package Paws::CloudHSMv2::DescribeBackups;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::CloudHSMv2::Filters');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortAscending => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBackups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudHSMv2::DescribeBackupsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::DescribeBackups - Arguments for method DescribeBackups on L<Paws::CloudHSMv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBackups on the
L<AWS CloudHSM V2|Paws::CloudHSMv2> service. Use the attributes of this class
as arguments to method DescribeBackups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBackups.

=head1 SYNOPSIS

    my $cloudhsmv2 = Paws->service('CloudHSMv2');
    my $DescribeBackupsResponse = $cloudhsmv2->DescribeBackups(
      Filters       => { 'MyField' => [ 'MyString', ... ], },    # OPTIONAL
      MaxResults    => 1,                                        # OPTIONAL
      NextToken     => 'MyNextToken',                            # OPTIONAL
      SortAscending => 1,                                        # OPTIONAL
    );

    # Results:
    my $Backups   = $DescribeBackupsResponse->Backups;
    my $NextToken = $DescribeBackupsResponse->NextToken;

    # Returns a L<Paws::CloudHSMv2::DescribeBackupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2/DescribeBackups>

=head1 ATTRIBUTES


=head2 Filters => L<Paws::CloudHSMv2::Filters>

One or more filters to limit the items returned in the response.

Use the C<backupIds> filter to return only the specified backups.
Specify backups by their backup identifier (ID).

Use the C<sourceBackupIds> filter to return only the backups created
from a source backup. The C<sourceBackupID> of a source backup is
returned by the CopyBackupToRegion operation.

Use the C<clusterIds> filter to return only the backups for the
specified clusters. Specify clusters by their cluster identifier (ID).

Use the C<states> filter to return only backups that match the
specified state.



=head2 MaxResults => Int

The maximum number of backups to return in the response. When there are
more backups than the number you specify, the response contains a
C<NextToken> value.



=head2 NextToken => Str

The C<NextToken> value that you received in the previous response. Use
this value to get more backups.



=head2 SortAscending => Bool






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBackups in L<Paws::CloudHSMv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

