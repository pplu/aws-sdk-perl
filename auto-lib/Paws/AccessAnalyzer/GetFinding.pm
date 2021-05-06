
package Paws::AccessAnalyzer::GetFinding;
  use Moose;
  has AnalyzerArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'analyzerArn', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFinding');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/finding/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AccessAnalyzer::GetFindingResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::GetFinding - Arguments for method GetFinding on L<Paws::AccessAnalyzer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFinding on the
L<Access Analyzer|Paws::AccessAnalyzer> service. Use the attributes of this class
as arguments to method GetFinding.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFinding.

=head1 SYNOPSIS

    my $access-analyzer = Paws->service('AccessAnalyzer');
    my $GetFindingResponse = $access -analyzer->GetFinding(
      AnalyzerArn => 'MyAnalyzerArn',
      Id          => 'MyFindingId',

    );

    # Results:
    my $Finding = $GetFindingResponse->Finding;

    # Returns a L<Paws::AccessAnalyzer::GetFindingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/access-analyzer/GetFinding>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalyzerArn => Str

The ARN of the analyzer that generated the finding.



=head2 B<REQUIRED> Id => Str

The ID of the finding to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFinding in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

