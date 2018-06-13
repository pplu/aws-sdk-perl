
package Paws::Config::DeleteEvaluationResults;
  use Moose;
  has ConfigRuleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEvaluationResults');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::DeleteEvaluationResultsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DeleteEvaluationResults - Arguments for method DeleteEvaluationResults on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteEvaluationResults on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method DeleteEvaluationResults.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteEvaluationResults.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $DeleteEvaluationResultsResponse = $config->DeleteEvaluationResults(
      ConfigRuleName => 'MyStringWithCharLimit64',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/DeleteEvaluationResults>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigRuleName => Str

The name of the AWS Config rule for which you want to delete the
evaluation results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteEvaluationResults in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

