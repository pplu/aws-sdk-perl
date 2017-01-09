
package Paws::Polly::PutLexicon;
  use Moose;
  has Content => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'LexiconName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutLexicon');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/lexicons/{LexiconName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Polly::PutLexiconOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly::PutLexicon - Arguments for method PutLexicon on Paws::Polly

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutLexicon on the 
Amazon Polly service. Use the attributes of this class
as arguments to method PutLexicon.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutLexicon.

As an example:

  $service_obj->PutLexicon(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Content => Str

Content of the PLS lexicon as string data.



=head2 B<REQUIRED> Name => Str

Name of the lexicon. The name must follow the regular express format
[0-9A-Za-z]{1,20}. That is, the name is a case-sensitive alphanumeric
string up to 20 characters long.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutLexicon in L<Paws::Polly>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

