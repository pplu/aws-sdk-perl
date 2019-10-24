# Generated from json/callargs_class.tt

package Paws::ApplicationInsights::DescribeProblem;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApplicationInsights::Types qw//;
  has ProblemId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeProblem');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApplicationInsights::DescribeProblemResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ProblemId' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'ProblemId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::DescribeProblem - Arguments for method DescribeProblem on L<Paws::ApplicationInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeProblem on the
L<Amazon CloudWatch Application Insights|Paws::ApplicationInsights> service. Use the attributes of this class
as arguments to method DescribeProblem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeProblem.

=head1 SYNOPSIS

    my $applicationinsights = Paws->service('ApplicationInsights');
    my $DescribeProblemResponse = $applicationinsights->DescribeProblem(
      ProblemId => 'MyProblemId',

    );

    # Results:
    my $Problem = $DescribeProblemResponse->Problem;

    # Returns a L<Paws::ApplicationInsights::DescribeProblemResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/applicationinsights/DescribeProblem>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProblemId => Str

The ID of the problem.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeProblem in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

