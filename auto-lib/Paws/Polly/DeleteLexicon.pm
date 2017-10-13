
package Paws::Polly::DeleteLexicon;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'LexiconName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLexicon');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/lexicons/{LexiconName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Polly::DeleteLexiconOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly::DeleteLexicon - Arguments for method DeleteLexicon on Paws::Polly

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteLexicon on the 
Amazon Polly service. Use the attributes of this class
as arguments to method DeleteLexicon.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteLexicon.

As an example:

  $service_obj->DeleteLexicon(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the lexicon to delete. Must be an existing lexicon in the
region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteLexicon in L<Paws::Polly>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

