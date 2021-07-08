
package Paws::Quicksight::ListAnalyses;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAnalyses');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/analyses');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::ListAnalysesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::ListAnalyses - Arguments for method ListAnalyses on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAnalyses on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method ListAnalyses.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAnalyses.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $ListAnalysesResponse = $quicksight->ListAnalyses(
      AwsAccountId => 'MyAwsAccountId',
      MaxResults   => 1,                  # OPTIONAL
      NextToken    => 'MyString',         # OPTIONAL
    );

    # Results:
    my $AnalysisSummaryList = $ListAnalysesResponse->AnalysisSummaryList;
    my $NextToken           = $ListAnalysesResponse->NextToken;
    my $RequestId           = $ListAnalysesResponse->RequestId;
    my $Status              = $ListAnalysesResponse->Status;

    # Returns a L<Paws::Quicksight::ListAnalysesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/ListAnalyses>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account that contains the analyses.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

A pagination token that can be used in a subsequent request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAnalyses in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

