package Paws::Glue::CreateJsonClassifierRequest;
  use Moose;
  has JsonPath => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateJsonClassifierRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::CreateJsonClassifierRequest object:

  $service_obj->Method(Att1 => { JsonPath => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::CreateJsonClassifierRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->JsonPath

=head1 DESCRIPTION

Specifies a JSON classifier for C<CreateClassifier> to create.

=head1 ATTRIBUTES


=head2 B<REQUIRED> JsonPath => Str

  A C<JsonPath> string defining the JSON data for the classifier to
classify. AWS Glue supports a subset of JsonPath, as described in
Writing JsonPath Custom Classifiers
(https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json).


=head2 B<REQUIRED> Name => Str

  The name of the classifier.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

