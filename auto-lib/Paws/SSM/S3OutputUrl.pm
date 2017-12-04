package Paws::SSM::S3OutputUrl;
  use Moose;
  has OutputUrl => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::S3OutputUrl

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::S3OutputUrl object:

  $service_obj->Method(Att1 => { OutputUrl => $value, ..., OutputUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::S3OutputUrl object:

  $result = $service_obj->Method(...);
  $result->Att1->OutputUrl

=head1 DESCRIPTION

A URL for the Amazon S3 bucket where you want to store the results of
this request.

=head1 ATTRIBUTES


=head2 OutputUrl => Str

  A URL for an Amazon S3 bucket where you want to store the results of
this request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

