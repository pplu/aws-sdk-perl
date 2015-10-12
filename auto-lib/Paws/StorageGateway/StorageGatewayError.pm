package Paws::StorageGateway::StorageGatewayError;
  use Moose;
  has errorCode => (is => 'ro', isa => 'Str');
  has errorDetails => (is => 'ro', isa => 'Paws::StorageGateway::errorDetails');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::StorageGatewayError

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StorageGateway::StorageGatewayError object:

  $service_obj->Method(Att1 => { errorCode => $value, ..., errorDetails => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StorageGateway::StorageGatewayError object:

  $result = $service_obj->Method(...);
  $result->Att1->errorCode

=head1 ATTRIBUTES

=head2 errorCode => Str

  Additional information about the error.

=head2 errorDetails => Paws::StorageGateway::errorDetails

  Human-readable text that provides detail about the error that occurred.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

