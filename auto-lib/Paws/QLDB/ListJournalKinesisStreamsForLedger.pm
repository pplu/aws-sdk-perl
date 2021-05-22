
package Paws::QLDB::ListJournalKinesisStreamsForLedger;
  use Moose;
  has LedgerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max_results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next_token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListJournalKinesisStreamsForLedger');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ledgers/{name}/journal-kinesis-streams');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QLDB::ListJournalKinesisStreamsForLedgerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::ListJournalKinesisStreamsForLedger - Arguments for method ListJournalKinesisStreamsForLedger on L<Paws::QLDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListJournalKinesisStreamsForLedger on the
L<Amazon QLDB|Paws::QLDB> service. Use the attributes of this class
as arguments to method ListJournalKinesisStreamsForLedger.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListJournalKinesisStreamsForLedger.

=head1 SYNOPSIS

    my $qldb = Paws->service('QLDB');
    my $ListJournalKinesisStreamsForLedgerResponse =
      $qldb->ListJournalKinesisStreamsForLedger(
      LedgerName => 'MyLedgerName',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListJournalKinesisStreamsForLedgerResponse->NextToken;
    my $Streams   = $ListJournalKinesisStreamsForLedgerResponse->Streams;

   # Returns a L<Paws::QLDB::ListJournalKinesisStreamsForLedgerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qldb/ListJournalKinesisStreamsForLedger>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LedgerName => Str

The name of the ledger.



=head2 MaxResults => Int

The maximum number of results to return in a single
C<ListJournalKinesisStreamsForLedger> request. (The actual number of
results returned might be fewer.)



=head2 NextToken => Str

A pagination token, indicating that you want to retrieve the next page
of results. If you received a value for C<NextToken> in the response
from a previous C<ListJournalKinesisStreamsForLedger> call, you should
use that value as input here.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListJournalKinesisStreamsForLedger in L<Paws::QLDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

