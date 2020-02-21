
package Paws::AccessAnalyzer::ListAnalyzers;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'type');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAnalyzers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/analyzer');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AccessAnalyzer::ListAnalyzersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::ListAnalyzers - Arguments for method ListAnalyzers on L<Paws::AccessAnalyzer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAnalyzers on the
L<Access Analyzer|Paws::AccessAnalyzer> service. Use the attributes of this class
as arguments to method ListAnalyzers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAnalyzers.

=head1 SYNOPSIS

    my $access-analyzer = Paws->service('AccessAnalyzer');
    my $ListAnalyzersResponse = $access -analyzer->ListAnalyzers(
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
      Type       => 'ACCOUNT',    # OPTIONAL
    );

    # Results:
    my $Analyzers = $ListAnalyzersResponse->Analyzers;
    my $NextToken = $ListAnalyzersResponse->NextToken;

    # Returns a L<Paws::AccessAnalyzer::ListAnalyzersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/access-analyzer/ListAnalyzers>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in the response.



=head2 NextToken => Str

A token used for pagination of results returned.



=head2 Type => Str

The type of analyzer.

Valid values are: C<"ACCOUNT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAnalyzers in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

