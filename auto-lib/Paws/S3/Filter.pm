package Paws::S3::Filter;
  use Moose;
  has And => (is => 'ro', isa => 'Paws::S3::And');
  has Prefix => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::Filter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::Filter object:

  $service_obj->Method(Att1 => { And => $value, ..., Prefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::Filter object:

  $result = $service_obj->Method(...);
  $result->Att1->And

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 And => L<Paws::S3::And>

  


=head2 Prefix => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

