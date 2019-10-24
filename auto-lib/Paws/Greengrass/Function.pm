# Generated from default/object.tt
package Paws::Greengrass::Function;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw/Greengrass_FunctionConfiguration/;
  has FunctionArn => (is => 'ro', isa => Str);
  has FunctionConfiguration => (is => 'ro', isa => Greengrass_FunctionConfiguration);
  has Id => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               'FunctionArn' => {
                                  'type' => 'Str'
                                },
               'FunctionConfiguration' => {
                                            'class' => 'Paws::Greengrass::FunctionConfiguration',
                                            'type' => 'Greengrass_FunctionConfiguration'
                                          }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::Function

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::Function object:

  $service_obj->Method(Att1 => { FunctionArn => $value, ..., Id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::Function object:

  $result = $service_obj->Method(...);
  $result->Att1->FunctionArn

=head1 DESCRIPTION

Information about a Lambda function.

=head1 ATTRIBUTES


=head2 FunctionArn => Str

  The ARN of the Lambda function.


=head2 FunctionConfiguration => Greengrass_FunctionConfiguration

  The configuration of the Lambda function.


=head2 Id => Str

  A descriptive or arbitrary ID for the function. This value must be
unique within the function definition version. Max length is 128
characters with pattern ''[a-zA-Z0-9:_-]+''.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

