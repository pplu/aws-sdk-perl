# Generated from default/object.tt
package Paws::StorageGateway::StorageGatewayError;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StorageGateway::Types qw/StorageGateway_errorDetails/;
  has ErrorCode => (is => 'ro', isa => Str);
  has ErrorDetails => (is => 'ro', isa => StorageGateway_errorDetails);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ErrorCode' => {
                                'type' => 'Str'
                              },
               'ErrorDetails' => {
                                   'class' => 'Paws::StorageGateway::ErrorDetails',
                                   'type' => 'StorageGateway_errorDetails'
                                 }
             },
  'NameInRequest' => {
                       'ErrorCode' => 'errorCode',
                       'ErrorDetails' => 'errorDetails'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::StorageGatewayError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StorageGateway::StorageGatewayError object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., ErrorDetails => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StorageGateway::StorageGatewayError object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Provides additional information about an error that was returned by the
service as an or. See the C<errorCode> and C<errorDetails> members for
more information about the error.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  Additional information about the error.


=head2 ErrorDetails => StorageGateway_errorDetails

  Human-readable text that provides detail about the error that occurred.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

