
package Paws::Polly::ListLexicons;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLexicons');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/lexicons');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Polly::ListLexiconsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly::ListLexicons - Arguments for method ListLexicons on L<Paws::Polly>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLexicons on the
L<Amazon Polly|Paws::Polly> service. Use the attributes of this class
as arguments to method ListLexicons.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLexicons.

=head1 SYNOPSIS

    my $polly = Paws->service('Polly');
    # To list all lexicons in a region
    # Returns a list of pronunciation lexicons stored in an AWS Region.
    my $ListLexiconsOutput = $polly->ListLexicons();

    # Results:
    my $Lexicons = $ListLexiconsOutput->Lexicons;

    # Returns a L<Paws::Polly::ListLexiconsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/polly/ListLexicons>

=head1 ATTRIBUTES


=head2 NextToken => Str

An opaque pagination token returned from previous C<ListLexicons>
operation. If present, indicates where to continue the list of
lexicons.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLexicons in L<Paws::Polly>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

