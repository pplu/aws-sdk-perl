# Generated from default/object.tt
package Paws::Config::ConformancePackInputParameter;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Config::Types qw//;
  has ParameterName => (is => 'ro', isa => Str, required => 1);
  has ParameterValue => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ParameterName' => {
                                    'type' => 'Str'
                                  },
               'ParameterValue' => {
                                     'type' => 'Str'
                                   }
             },
  'IsRequired' => {
                    'ParameterValue' => 1,
                    'ParameterName' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ConformancePackInputParameter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ConformancePackInputParameter object:

  $service_obj->Method(Att1 => { ParameterName => $value, ..., ParameterValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ConformancePackInputParameter object:

  $result = $service_obj->Method(...);
  $result->Att1->ParameterName

=head1 DESCRIPTION

Input parameters in the form of key-value pairs for the conformance
pack, both of which you define. Keys can have a maximum character
length of 128 characters, and values can have a maximum length of 256
characters.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ParameterName => Str

  One part of a key-value pair.


=head2 B<REQUIRED> ParameterValue => Str

  Another part of the key-value pair.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

