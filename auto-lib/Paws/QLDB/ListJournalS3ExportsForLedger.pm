
package Paws::QLDB::ListJournalS3ExportsForLedger;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max_results');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next_token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListJournalS3ExportsForLedger');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ledgers/{name}/journal-s3-exports');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QLDB::ListJournalS3ExportsForLedgerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::ListJournalS3ExportsForLedger - Arguments for method ListJournalS3ExportsForLedger on L<Paws::QLDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListJournalS3ExportsForLedger on the
L<Amazon QLDB|Paws::QLDB> service. Use the attributes of this class
as arguments to method ListJournalS3ExportsForLedger.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListJournalS3ExportsForLedger.

=head1 SYNOPSIS

    my $qldb = Paws->service('QLDB');
    my $ListJournalS3ExportsForLedgerResponse =
      $qldb->ListJournalS3ExportsForLedger(
      Name       => 'MyLedgerName',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $JournalS3Exports =
      $ListJournalS3ExportsForLedgerResponse->JournalS3Exports;
    my $NextToken = $ListJournalS3ExportsForLedgerResponse->NextToken;

    # Returns a L<Paws::QLDB::ListJournalS3ExportsForLedgerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qldb/ListJournalS3ExportsForLedger>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in a single
C<ListJournalS3ExportsForLedger> request. (The actual number of results
returned might be fewer.)



=head2 B<REQUIRED> Name => Str

The name of the ledger.



=head2 NextToken => Str

A pagination token, indicating that you want to retrieve the next page
of results. If you received a value for C<NextToken> in the response
from a previous C<ListJournalS3ExportsForLedger> call, then you should
use that value as input here.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListJournalS3ExportsForLedger in L<Paws::QLDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

