
package Paws::AccessAnalyzer::ListAnalyzedResources;
  use Moose;
  has AnalyzerArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'analyzerArn', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAnalyzedResources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/analyzed-resource');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AccessAnalyzer::ListAnalyzedResourcesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::ListAnalyzedResources - Arguments for method ListAnalyzedResources on L<Paws::AccessAnalyzer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAnalyzedResources on the
L<Access Analyzer|Paws::AccessAnalyzer> service. Use the attributes of this class
as arguments to method ListAnalyzedResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAnalyzedResources.

=head1 SYNOPSIS

    my $access-analyzer = Paws->service('AccessAnalyzer');
    my $ListAnalyzedResourcesResponse =
      $access -analyzer->ListAnalyzedResources(
      AnalyzerArn  => 'MyAnalyzerArn',
      MaxResults   => 1,                   # OPTIONAL
      NextToken    => 'MyToken',           # OPTIONAL
      ResourceType => 'AWS::IAM::Role',    # OPTIONAL
      );

    # Results:
    my $AnalyzedResources = $ListAnalyzedResourcesResponse->AnalyzedResources;
    my $NextToken         = $ListAnalyzedResourcesResponse->NextToken;

    # Returns a L<Paws::AccessAnalyzer::ListAnalyzedResourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/access-analyzer/ListAnalyzedResources>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalyzerArn => Str

The ARN of the analyzer to retrieve a list of analyzed resources from.



=head2 MaxResults => Int

The maximum number of results to return in the response.



=head2 NextToken => Str

A token used for pagination of results returned.



=head2 ResourceType => Str

The type of resource.

Valid values are: C<"AWS::IAM::Role">, C<"AWS::KMS::Key">, C<"AWS::Lambda::Function">, C<"AWS::Lambda::LayerVersion">, C<"AWS::S3::Bucket">, C<"AWS::SQS::Queue">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAnalyzedResources in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

