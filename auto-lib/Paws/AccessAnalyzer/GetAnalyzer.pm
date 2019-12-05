
package Paws::AccessAnalyzer::GetAnalyzer;
  use Moose;
  has AnalyzerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'analyzerName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAnalyzer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/analyzer/{analyzerName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AccessAnalyzer::GetAnalyzerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::GetAnalyzer - Arguments for method GetAnalyzer on L<Paws::AccessAnalyzer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAnalyzer on the
L<Access Analyzer|Paws::AccessAnalyzer> service. Use the attributes of this class
as arguments to method GetAnalyzer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAnalyzer.

=head1 SYNOPSIS

    my $access-analyzer = Paws->service('AccessAnalyzer');
    my $GetAnalyzerResponse = $access -analyzer->GetAnalyzer(
      AnalyzerName => 'MyName',

    );

    # Results:
    my $Analyzer = $GetAnalyzerResponse->Analyzer;

    # Returns a L<Paws::AccessAnalyzer::GetAnalyzerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/access-analyzer/GetAnalyzer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalyzerName => Str

The name of the analyzer retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAnalyzer in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

