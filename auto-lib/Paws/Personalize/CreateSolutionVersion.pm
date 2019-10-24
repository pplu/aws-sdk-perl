# Generated from json/callargs_class.tt

package Paws::Personalize::CreateSolutionVersion;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has SolutionArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateSolutionVersion');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Personalize::CreateSolutionVersionResponse');
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

Paws::Personalize::CreateSolutionVersion - Arguments for method CreateSolutionVersion on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSolutionVersion on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method CreateSolutionVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSolutionVersion.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $CreateSolutionVersionResponse = $personalize->CreateSolutionVersion(
      SolutionArn => 'MyArn',

    );

    # Results:
    my $SolutionVersionArn = $CreateSolutionVersionResponse->SolutionVersionArn;

    # Returns a L<Paws::Personalize::CreateSolutionVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/CreateSolutionVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SolutionArn => Str

The Amazon Resource Name (ARN) of the solution containing the training
configuration information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSolutionVersion in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

