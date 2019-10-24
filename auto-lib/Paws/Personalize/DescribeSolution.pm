# Generated from json/callargs_class.tt

package Paws::Personalize::DescribeSolution;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has SolutionArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeSolution');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Personalize::DescribeSolutionResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SolutionArn' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'SolutionArn' => 'solutionArn'
                     },
  'IsRequired' => {
                    'SolutionArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeSolution - Arguments for method DescribeSolution on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSolution on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method DescribeSolution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSolution.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $DescribeSolutionResponse = $personalize->DescribeSolution(
      SolutionArn => 'MyArn',

    );

    # Results:
    my $Solution = $DescribeSolutionResponse->Solution;

    # Returns a L<Paws::Personalize::DescribeSolutionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/DescribeSolution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SolutionArn => Str

The Amazon Resource Name (ARN) of the solution to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSolution in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

