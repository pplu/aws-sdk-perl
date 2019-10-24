# Generated from default/object.tt
package Paws::Greengrass::GeneralError;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::Greengrass::Types qw/Greengrass_ErrorDetail/;
  has ErrorDetails => (is => 'ro', isa => ArrayRef[Greengrass_ErrorDetail]);
  has Message => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Message' => {
                              'type' => 'Str'
                            },
               'ErrorDetails' => {
                                   'class' => 'Paws::Greengrass::ErrorDetail',
                                   'type' => 'ArrayRef[Greengrass_ErrorDetail]'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GeneralError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::GeneralError object:

  $service_obj->Method(Att1 => { ErrorDetails => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::GeneralError object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorDetails

=head1 DESCRIPTION

General error information.

=head1 ATTRIBUTES


=head2 ErrorDetails => ArrayRef[Greengrass_ErrorDetail]

  Details about the error.


=head2 Message => Str

  A message containing information about the error.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

