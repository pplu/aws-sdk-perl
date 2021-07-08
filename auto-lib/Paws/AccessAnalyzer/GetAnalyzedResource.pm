
package Paws::AccessAnalyzer::GetAnalyzedResource;
  use Moose;
  has AnalyzerArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'analyzerArn', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAnalyzedResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/analyzed-resource');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AccessAnalyzer::GetAnalyzedResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::GetAnalyzedResource - Arguments for method GetAnalyzedResource on L<Paws::AccessAnalyzer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAnalyzedResource on the
L<Access Analyzer|Paws::AccessAnalyzer> service. Use the attributes of this class
as arguments to method GetAnalyzedResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAnalyzedResource.

=head1 SYNOPSIS

    my $access-analyzer = Paws->service('AccessAnalyzer');
    my $GetAnalyzedResourceResponse = $access -analyzer->GetAnalyzedResource(
      AnalyzerArn => 'MyAnalyzerArn',
      ResourceArn => 'MyResourceArn',

    );

    # Results:
    my $Resource = $GetAnalyzedResourceResponse->Resource;

    # Returns a L<Paws::AccessAnalyzer::GetAnalyzedResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/access-analyzer/GetAnalyzedResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalyzerArn => Str

The ARN of the analyzer
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources)
to retrieve information from.



=head2 B<REQUIRED> ResourceArn => Str

The ARN of the resource to retrieve information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAnalyzedResource in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

