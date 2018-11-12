package Paws::Macie::ClassificationType;
  use Moose;
  has Continuous => (is => 'ro', isa => 'Str', request_name => 'continuous', traits => ['NameInRequest'], required => 1);
  has OneTime => (is => 'ro', isa => 'Str', request_name => 'oneTime', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie::ClassificationType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Macie::ClassificationType object:

  $service_obj->Method(Att1 => { Continuous => $value, ..., OneTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Macie::ClassificationType object:

  $result = $service_obj->Method(...);
  $result->Att1->Continuous

=head1 DESCRIPTION

The classification type that Amazon Macie applies to the associated S3
resources.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Continuous => Str

  A continuous classification of the objects that are added to a
specified S3 bucket. Amazon Macie begins performing continuous
classification after a bucket is successfully associated with Amazon
Macie.


=head2 B<REQUIRED> OneTime => Str

  A one-time classification of all of the existing objects in a specified
S3 bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Macie>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

