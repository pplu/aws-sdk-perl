package Paws::Glue::JsonClassifier;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has JsonPath => (is => 'ro', isa => 'Str', required => 1);
  has LastUpdated => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Version => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::JsonClassifier

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::JsonClassifier object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::JsonClassifier object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

A classifier for C<JSON> content.

=head1 ATTRIBUTES


=head2 CreationTime => Str

  The time this classifier was registered.


=head2 B<REQUIRED> JsonPath => Str

  A C<JsonPath> string defining the JSON data for the classifier to
classify. AWS Glue supports a subset of JsonPath, as described in
Writing JsonPath Custom Classifiers
(https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json).


=head2 LastUpdated => Str

  The time this classifier was last updated.


=head2 B<REQUIRED> Name => Str

  The name of the classifier.


=head2 Version => Int

  The version of this classifier.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

