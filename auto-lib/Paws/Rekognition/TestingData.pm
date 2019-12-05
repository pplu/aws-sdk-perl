package Paws::Rekognition::TestingData;
  use Moose;
  has Assets => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::Asset]');
  has AutoCreate => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::TestingData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::TestingData object:

  $service_obj->Method(Att1 => { Assets => $value, ..., AutoCreate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::TestingData object:

  $result = $service_obj->Method(...);
  $result->Att1->Assets

=head1 DESCRIPTION

The dataset used for testing. Optionally, if C<AutoCreate> is set,
Amazon Rekognition Custom Labels creates a testing dataset using an
80/20 split of the training dataset.

=head1 ATTRIBUTES


=head2 Assets => ArrayRef[L<Paws::Rekognition::Asset>]

  The assets used for testing.


=head2 AutoCreate => Bool

  If specified, Amazon Rekognition Custom Labels creates a testing
dataset with an 80/20 split of the training dataset.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

