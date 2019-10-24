# Generated from default/object.tt
package Paws::CloudDirectory::BatchReadOperationResponse;
  use Moo;
  use Types::Standard qw//;
  use Paws::CloudDirectory::Types qw/CloudDirectory_BatchReadSuccessfulResponse CloudDirectory_BatchReadException/;
  has ExceptionResponse => (is => 'ro', isa => CloudDirectory_BatchReadException);
  has SuccessfulResponse => (is => 'ro', isa => CloudDirectory_BatchReadSuccessfulResponse);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ExceptionResponse' => {
                                        'class' => 'Paws::CloudDirectory::BatchReadException',
                                        'type' => 'CloudDirectory_BatchReadException'
                                      },
               'SuccessfulResponse' => {
                                         'class' => 'Paws::CloudDirectory::BatchReadSuccessfulResponse',
                                         'type' => 'CloudDirectory_BatchReadSuccessfulResponse'
                                       }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchReadOperationResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchReadOperationResponse object:

  $service_obj->Method(Att1 => { ExceptionResponse => $value, ..., SuccessfulResponse => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchReadOperationResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->ExceptionResponse

=head1 DESCRIPTION

Represents the output of a C<BatchRead> response operation.

=head1 ATTRIBUTES


=head2 ExceptionResponse => CloudDirectory_BatchReadException

  Identifies which operation in a batch has failed.


=head2 SuccessfulResponse => CloudDirectory_BatchReadSuccessfulResponse

  Identifies which operation in a batch has succeeded.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

