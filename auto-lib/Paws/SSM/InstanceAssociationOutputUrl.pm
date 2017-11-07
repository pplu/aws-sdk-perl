package Paws::SSM::InstanceAssociationOutputUrl;
  use Moose;
  has S3OutputUrl => (is => 'ro', isa => 'Paws::SSM::S3OutputUrl');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::InstanceAssociationOutputUrl

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::InstanceAssociationOutputUrl object:

  $service_obj->Method(Att1 => { S3OutputUrl => $value, ..., S3OutputUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::InstanceAssociationOutputUrl object:

  $result = $service_obj->Method(...);
  $result->Att1->S3OutputUrl

=head1 DESCRIPTION

The URL of Amazon S3 bucket where you want to store the results of this
request.

=head1 ATTRIBUTES


=head2 S3OutputUrl => L<Paws::SSM::S3OutputUrl>

  The URL of Amazon S3 bucket where you want to store the results of this
request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

