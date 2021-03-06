
package Paws::QLDB::DescribeJournalS3Export;
  use Moose;
  has ExportId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'exportId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeJournalS3Export');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ledgers/{name}/journal-s3-exports/{exportId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QLDB::DescribeJournalS3ExportResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::DescribeJournalS3Export - Arguments for method DescribeJournalS3Export on L<Paws::QLDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeJournalS3Export on the
L<Amazon QLDB|Paws::QLDB> service. Use the attributes of this class
as arguments to method DescribeJournalS3Export.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeJournalS3Export.

=head1 SYNOPSIS

    my $qldb = Paws->service('QLDB');
    my $DescribeJournalS3ExportResponse = $qldb->DescribeJournalS3Export(
      ExportId => 'MyUniqueId',
      Name     => 'MyLedgerName',

    );

    # Results:
    my $ExportDescription = $DescribeJournalS3ExportResponse->ExportDescription;

    # Returns a L<Paws::QLDB::DescribeJournalS3ExportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qldb/DescribeJournalS3Export>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportId => Str

The UUID (represented in Base62-encoded text) of the journal export job
to describe.



=head2 B<REQUIRED> Name => Str

The name of the ledger.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeJournalS3Export in L<Paws::QLDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

