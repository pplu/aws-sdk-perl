package Paws::Glue::Classifier;
  use Moose;
  has GrokClassifier => (is => 'ro', isa => 'Paws::Glue::GrokClassifier');
  has JsonClassifier => (is => 'ro', isa => 'Paws::Glue::JsonClassifier');
  has XMLClassifier => (is => 'ro', isa => 'Paws::Glue::XMLClassifier');
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

  $service_obj->Method(Att1 => { GrokClassifier => $value, ..., XMLClassifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::Classifier object:

  $result = $service_obj->Method(...);
  $result->Att1->GrokClassifier

=head1 DESCRIPTION

Classifiers are triggered during a crawl task. A classifier checks
whether a given file is in a format it can handle, and if it is, the
classifier creates a schema in the form of a C<StructType> object that
matches that data format.

You can use the standard classifiers that AWS Glue supplies, or you can
write your own classifiers to best categorize your data sources and
specify the appropriate schemas to use for them. A classifier can be a
C<grok> classifier, an C<XML> classifier, or a C<JSON> classifier, as
specified in one of the fields in the C<Classifier> object.

=head1 ATTRIBUTES


=head2 GrokClassifier => L<Paws::Glue::GrokClassifier>

  A C<GrokClassifier> object.


=head2 JsonClassifier => L<Paws::Glue::JsonClassifier>

  A C<JsonClassifier> object.


=head2 XMLClassifier => L<Paws::Glue::XMLClassifier>

  An C<XMLClassifier> object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

