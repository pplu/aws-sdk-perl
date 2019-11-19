# Generated from json/callargs_class.tt

package Paws::Personalize::DescribeSolutionVersion;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has SolutionVersionArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeSolutionVersion');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Personalize::DescribeSolutionVersionResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SolutionVersionArn' => {
                                         'type' => 'Str'
                                       }
             },
  'IsRequired' => {
                    'SolutionVersionArn' => 1
                  },
  'NameInRequest' => {
                       'SolutionVersionArn' => 'solutionVersionArn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeSolutionVersion - Arguments for method DescribeSolutionVersion on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSolutionVersion on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method DescribeSolutionVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSolutionVersion.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $DescribeSolutionVersionResponse = $personalize->DescribeSolutionVersion(
      SolutionVersionArn => 'MyArn',

    );

    # Results:
    my $SolutionVersion = $DescribeSolutionVersionResponse->SolutionVersion;

    # Returns a L<Paws::Personalize::DescribeSolutionVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/DescribeSolutionVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SolutionVersionArn => Str

The Amazon Resource Name (ARN) of the solution version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSolutionVersion in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

