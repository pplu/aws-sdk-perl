package Paws::SSM::SessionManagerOutputUrl;
  use Moose;
  has CloudWatchOutputUrl => (is => 'ro', isa => 'Str');
  has S3OutputUrl => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::SessionManagerOutputUrl

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::SessionManagerOutputUrl object:

  $service_obj->Method(Att1 => { CloudWatchOutputUrl => $value, ..., S3OutputUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::SessionManagerOutputUrl object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchOutputUrl

=head1 DESCRIPTION

Reserved for future use.

=head1 ATTRIBUTES


=head2 CloudWatchOutputUrl => Str

  Reserved for future use.


=head2 S3OutputUrl => Str

  Reserved for future use.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

