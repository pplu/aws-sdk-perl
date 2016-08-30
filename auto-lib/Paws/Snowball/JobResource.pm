package Paws::Snowball::JobResource;
  use Moose;
  has S3Resources => (is => 'ro', isa => 'ArrayRef[Paws::Snowball::S3Resource]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::JobResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Snowball::JobResource object:

  $service_obj->Method(Att1 => { S3Resources => $value, ..., S3Resources => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Snowball::JobResource object:

  $result = $service_obj->Method(...);
  $result->Att1->S3Resources

=head1 DESCRIPTION

Contains an array of C<S3Resource> objects. Each C<S3Resource> object
represents an Amazon S3 bucket that your transferred data will be
exported from or imported into.

=head1 ATTRIBUTES


=head2 S3Resources => ArrayRef[L<Paws::Snowball::S3Resource>]

  An array of C<S3Resource> objects.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

