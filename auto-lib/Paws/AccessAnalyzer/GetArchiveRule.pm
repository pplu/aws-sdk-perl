
package Paws::AccessAnalyzer::GetArchiveRule;
  use Moose;
  has AnalyzerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'analyzerName', required => 1);
  has RuleName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ruleName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetArchiveRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/analyzer/{analyzerName}/archive-rule/{ruleName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AccessAnalyzer::GetArchiveRuleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::GetArchiveRule - Arguments for method GetArchiveRule on L<Paws::AccessAnalyzer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetArchiveRule on the
L<Access Analyzer|Paws::AccessAnalyzer> service. Use the attributes of this class
as arguments to method GetArchiveRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetArchiveRule.

=head1 SYNOPSIS

    my $access-analyzer = Paws->service('AccessAnalyzer');
    my $GetArchiveRuleResponse = $access -analyzer->GetArchiveRule(
      AnalyzerName => 'MyName',
      RuleName     => 'MyName',

    );

    # Results:
    my $ArchiveRule = $GetArchiveRuleResponse->ArchiveRule;

    # Returns a L<Paws::AccessAnalyzer::GetArchiveRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/access-analyzer/GetArchiveRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalyzerName => Str

The name of the analyzer to retrieve rules from.



=head2 B<REQUIRED> RuleName => Str

The name of the rule to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetArchiveRule in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

