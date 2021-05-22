
package Paws::AccessAnalyzer::UpdateArchiveRule;
  use Moose;
  has AnalyzerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'analyzerName', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Filter => (is => 'ro', isa => 'Paws::AccessAnalyzer::FilterCriteriaMap', traits => ['NameInRequest'], request_name => 'filter', required => 1);
  has RuleName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ruleName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateArchiveRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/analyzer/{analyzerName}/archive-rule/{ruleName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::UpdateArchiveRule - Arguments for method UpdateArchiveRule on L<Paws::AccessAnalyzer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateArchiveRule on the
L<Access Analyzer|Paws::AccessAnalyzer> service. Use the attributes of this class
as arguments to method UpdateArchiveRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateArchiveRule.

=head1 SYNOPSIS

    my $access-analyzer = Paws->service('AccessAnalyzer');
    $access -analyzer->UpdateArchiveRule(
      AnalyzerName => 'MyName',
      Filter       => {
        'MyString' => {
          Contains => [ 'MyString', ... ],    # min: 1, max: 20; OPTIONAL
          Eq       => [ 'MyString', ... ],    # min: 1, max: 20; OPTIONAL
          Exists => 1,                        # OPTIONAL
          Neq    => [ 'MyString', ... ],      # min: 1, max: 20; OPTIONAL
        },
      },
      RuleName    => 'MyName',
      ClientToken => 'MyString',              # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/access-analyzer/UpdateArchiveRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalyzerName => Str

The name of the analyzer to update the archive rules for.



=head2 ClientToken => Str

A client token.



=head2 B<REQUIRED> Filter => L<Paws::AccessAnalyzer::FilterCriteriaMap>

A filter to match for the rules to update. Only rules that match the
filter are updated.



=head2 B<REQUIRED> RuleName => Str

The name of the rule to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateArchiveRule in L<Paws::AccessAnalyzer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

