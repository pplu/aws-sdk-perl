
package Paws::Polly::DeleteLexicon;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Polly::Types qw//;
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteLexicon');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/lexicons/{LexiconName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Polly::DeleteLexiconOutput');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'ParamInURI' => {
                    'Name' => 'LexiconName'
                  },
  'IsRequired' => {
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly::DeleteLexicon - Arguments for method DeleteLexicon on L<Paws::Polly>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteLexicon on the
L<Amazon Polly|Paws::Polly> service. Use the attributes of this class
as arguments to method DeleteLexicon.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteLexicon.

=head1 SYNOPSIS

    my $polly = Paws->service('Polly');
    # To delete a lexicon
    # Deletes a specified pronunciation lexicon stored in an AWS Region.
    my $DeleteLexiconOutput = $polly->DeleteLexicon( 'Name' => 'example' );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/polly/DeleteLexicon>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the lexicon to delete. Must be an existing lexicon in the
region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteLexicon in L<Paws::Polly>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

