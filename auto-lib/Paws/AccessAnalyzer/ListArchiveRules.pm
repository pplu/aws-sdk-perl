
package Paws::AccessAnalyzer::ListArchiveRules;
  use Moose;
  has AnalyzerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'analyzerName', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListArchiveRules');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/analyzer/{analyzerName}/archive-rule');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AccessAnalyzer::ListArchiveRulesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::ListArchiveRules - Arguments for method ListArchiveRules on L<Paws::AccessAnalyzer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListArchiveRules on the
L<Access Analyzer|Paws::AccessAnalyzer> service. Use the attributes of this class
as arguments to method ListArchiveRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListArchiveRules.

=head1 SYNOPSIS

    my $access-analyzer = Paws->service('AccessAnalyzer');
    my $ListArchiveRulesResponse = $access -analyzer->ListArchiveRules(
      AnalyzerName => 'MyName',
      MaxResults   => 1,            # OPTIONAL
      NextToken    => 'MyToken',    # OPTIONAL
    );

    # Results:
    my $ArchiveRules = $ListArchiveRulesResponse->ArchiveRules;
    my $NextToken    = $ListArchiveRulesResponse->NextToken;

    # Returns a L<Paws::AccessAnalyzer::ListArchiveRulesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/access-analyzer/ListArchiveRules>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalyzerName => Str

The name of the analyzer to retrieve rules from.



=head2 MaxResults => Int

The maximum number of results to return in the request.



=head2 NextToken => Str

A token used for pagination of results returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListArchiveRules in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

