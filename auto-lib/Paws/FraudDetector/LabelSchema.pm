package Paws::FraudDetector::LabelSchema;
  use Moose;
  has LabelKey => (is => 'ro', isa => 'Str', request_name => 'labelKey', traits => ['NameInRequest'], required => 1);
  has LabelMapper => (is => 'ro', isa => 'Paws::FraudDetector::LabelMapper', request_name => 'labelMapper', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::LabelSchema

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FraudDetector::LabelSchema object:

  $service_obj->Method(Att1 => { LabelKey => $value, ..., LabelMapper => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FraudDetector::LabelSchema object:

  $result = $service_obj->Method(...);
  $result->Att1->LabelKey

=head1 DESCRIPTION

The label schema.

=head1 ATTRIBUTES


=head2 B<REQUIRED> LabelKey => Str

  The label key.


=head2 B<REQUIRED> LabelMapper => L<Paws::FraudDetector::LabelMapper>

  The label mapper maps the Amazon Fraud Detector supported label to the
appropriate source labels. For example, if C<"FRAUD"> and C<"LEGIT">
are Amazon Fraud Detector supported labels, this mapper could be:
C<{"FRAUD" =E<gt> ["0"]>, "LEGIT" =E<gt> ["1"]} or C<{"FRAUD" =E<gt>
["false"], "LEGIT" =E<gt> ["true"]}> or C<{"FRAUD" =E<gt> ["fraud",
"abuse"], "LEGIT" =E<gt> ["legit", "safe"]}>. The value part of the
mapper is a list, because you may have multiple variants for a single
Amazon Fraud Detector label.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

