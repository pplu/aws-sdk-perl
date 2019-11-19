package Paws::EC2::Storage;
  use Moo;  use Types::Standard qw//;
  use Paws::EC2::Types qw/EC2_S3Storage/;
  has S3 => (is => 'ro', isa => EC2_S3Storage);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'S3' => {
                         'type' => 'EC2_S3Storage',
                         'class' => 'Paws::EC2::S3Storage'
                       }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Storage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Storage object:

  $service_obj->Method(Att1 => { S3 => $value, ..., S3 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Storage object:

  $result = $service_obj->Method(...);
  $result->Att1->S3

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 S3 => EC2_S3Storage

  An Amazon S3 storage location.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
