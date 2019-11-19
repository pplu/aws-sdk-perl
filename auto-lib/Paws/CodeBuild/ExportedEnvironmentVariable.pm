# Generated from default/object.tt
package Paws::CodeBuild::ExportedEnvironmentVariable;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeBuild::Types qw//;
  has Name => (is => 'ro', isa => Str);
  has Value => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Name' => 'name',
                       'Value' => 'value'
                     },
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'Value' => {
                            'type' => 'Str'
                          }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ExportedEnvironmentVariable

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::ExportedEnvironmentVariable object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::ExportedEnvironmentVariable object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Information about an exported environment variable.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of this exported environment variable.


=head2 Value => Str

  The value assigned to this exported environment variable.

During a build, the value of a variable is available starting with the
C<install> phase. It can be updated between the start of the C<install>
phase and the end of the C<post_build> phase. After the C<post_build>
phase ends, the value of exported variables cannot change.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

