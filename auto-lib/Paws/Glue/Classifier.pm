# Generated from default/object.tt
package Paws::Glue::Classifier;
  use Moo;
  use Types::Standard qw//;
  use Paws::Glue::Types qw/Glue_GrokClassifier Glue_CsvClassifier Glue_JsonClassifier Glue_XMLClassifier/;
  has CsvClassifier => (is => 'ro', isa => Glue_CsvClassifier);
  has GrokClassifier => (is => 'ro', isa => Glue_GrokClassifier);
  has JsonClassifier => (is => 'ro', isa => Glue_JsonClassifier);
  has XMLClassifier => (is => 'ro', isa => Glue_XMLClassifier);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CsvClassifier' => {
                                    'class' => 'Paws::Glue::CsvClassifier',
                                    'type' => 'Glue_CsvClassifier'
                                  },
               'JsonClassifier' => {
                                     'type' => 'Glue_JsonClassifier',
                                     'class' => 'Paws::Glue::JsonClassifier'
                                   },
               'XMLClassifier' => {
                                    'type' => 'Glue_XMLClassifier',
                                    'class' => 'Paws::Glue::XMLClassifier'
                                  },
               'GrokClassifier' => {
                                     'type' => 'Glue_GrokClassifier',
                                     'class' => 'Paws::Glue::GrokClassifier'
                                   }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::Classifier

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::Classifier object:

  $service_obj->Method(Att1 => { CsvClassifier => $value, ..., XMLClassifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::Classifier object:

  $result = $service_obj->Method(...);
  $result->Att1->CsvClassifier

=head1 DESCRIPTION

Classifiers are triggered during a crawl task. A classifier checks
whether a given file is in a format it can handle. If it is, the
classifier creates a schema in the form of a C<StructType> object that
matches that data format.

You can use the standard classifiers that AWS Glue provides, or you can
write your own classifiers to best categorize your data sources and
specify the appropriate schemas to use for them. A classifier can be a
C<grok> classifier, an C<XML> classifier, a C<JSON> classifier, or a
custom C<CSV> classifier, as specified in one of the fields in the
C<Classifier> object.

=head1 ATTRIBUTES


=head2 CsvClassifier => Glue_CsvClassifier

  A classifier for comma-separated values (CSV).


=head2 GrokClassifier => Glue_GrokClassifier

  A classifier that uses C<grok>.


=head2 JsonClassifier => Glue_JsonClassifier

  A classifier for JSON content.


=head2 XMLClassifier => Glue_XMLClassifier

  A classifier for XML content.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

