
package Paws::Polly::GetLexicon;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'LexiconName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLexicon');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/lexicons/{LexiconName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Polly::GetLexiconOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly::GetLexicon - Arguments for method GetLexicon on L<Paws::Polly>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLexicon on the
L<Amazon Polly|Paws::Polly> service. Use the attributes of this class
as arguments to method GetLexicon.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLexicon.

=head1 SYNOPSIS

    my $polly = Paws->service('Polly');
   # To retrieve a lexicon
   # Returns the content of the specified pronunciation lexicon stored in an AWS
   # Region.
    my $GetLexiconOutput = $polly->GetLexicon(
      {
        'Name' => ''
      }
    );

    # Results:
    my $Lexicon           = $GetLexiconOutput->Lexicon;
    my $LexiconAttributes = $GetLexiconOutput->LexiconAttributes;

    # Returns a L<Paws::Polly::GetLexiconOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/polly/GetLexicon>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

Name of the lexicon.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLexicon in L<Paws::Polly>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

