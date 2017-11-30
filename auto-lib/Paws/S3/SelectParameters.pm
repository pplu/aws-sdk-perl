package Paws::S3::SelectParameters;
  use Moose;
  has Expression => (is => 'ro', isa => 'Str', required => 1);
  has ExpressionType => (is => 'ro', isa => 'Str', required => 1);
  has InputSerialization => (is => 'ro', isa => 'Paws::S3::InputSerialization', required => 1);
  has OutputSerialization => (is => 'ro', isa => 'Paws::S3::OutputSerialization', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::SelectParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::SelectParameters object:

  $service_obj->Method(Att1 => { Expression => $value, ..., OutputSerialization => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::SelectParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->Expression

=head1 DESCRIPTION

Describes the parameters for Select job types.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Expression => Str

  The expression that is used to query the object.


=head2 B<REQUIRED> ExpressionType => Str

  The type of the provided expression (e.g., SQL).


=head2 B<REQUIRED> InputSerialization => L<Paws::S3::InputSerialization>

  Describes the serialization format of the object.


=head2 B<REQUIRED> OutputSerialization => L<Paws::S3::OutputSerialization>

  Describes how the results of the Select job are serialized.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

