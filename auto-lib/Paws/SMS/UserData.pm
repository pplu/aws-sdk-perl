package Paws::SMS::UserData;
  use Moose;
  has S3Location => (is => 'ro', isa => 'Paws::SMS::S3Location', request_name => 's3Location', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::UserData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SMS::UserData object:

  $service_obj->Method(Att1 => { S3Location => $value, ..., S3Location => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SMS::UserData object:

  $result = $service_obj->Method(...);
  $result->Att1->S3Location

=head1 DESCRIPTION

A script that runs on first launch of an Amazon EC2 instance. Used for
configuring the server during launch.

=head1 ATTRIBUTES


=head2 S3Location => L<Paws::SMS::S3Location>

  Amazon S3 location of the user-data script.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

