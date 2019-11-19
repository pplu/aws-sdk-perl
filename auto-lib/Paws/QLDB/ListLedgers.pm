
package Paws::QLDB::ListLedgers;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::QLDB::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListLedgers');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/ledgers');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::QLDB::ListLedgersResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInQuery' => {
                      'MaxResults' => 'max_results',
                      'NextToken' => 'next_token'
                    },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::ListLedgers - Arguments for method ListLedgers on L<Paws::QLDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLedgers on the
L<Amazon QLDB|Paws::QLDB> service. Use the attributes of this class
as arguments to method ListLedgers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLedgers.

=head1 SYNOPSIS

    my $qldb = Paws->service('QLDB');
    my $ListLedgersResponse = $qldb->ListLedgers(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Ledgers   = $ListLedgersResponse->Ledgers;
    my $NextToken = $ListLedgersResponse->NextToken;

    # Returns a L<Paws::QLDB::ListLedgersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qldb/ListLedgers>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in a single C<ListLedgers>
request. (The actual number of results returned might be fewer.)



=head2 NextToken => Str

A pagination token, indicating that you want to retrieve the next page
of results. If you received a value for C<NextToken> in the response
from a previous C<ListLedgers> call, then you should use that value as
input here.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLedgers in L<Paws::QLDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

