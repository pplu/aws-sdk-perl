# Generated from default/object.tt
package Paws::Robomaker::LaunchConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Robomaker::Types qw/Robomaker_EnvironmentVariableMap/;
  has EnvironmentVariables => (is => 'ro', isa => Robomaker_EnvironmentVariableMap);
  has LaunchFile => (is => 'ro', isa => Str, required => 1);
  has PackageName => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LaunchFile' => {
                                 'type' => 'Str'
                               },
               'EnvironmentVariables' => {
                                           'class' => 'Paws::Robomaker::EnvironmentVariableMap',
                                           'type' => 'Robomaker_EnvironmentVariableMap'
                                         },
               'PackageName' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'LaunchFile' => 'launchFile',
                       'EnvironmentVariables' => 'environmentVariables',
                       'PackageName' => 'packageName'
                     },
  'IsRequired' => {
                    'LaunchFile' => 1,
                    'PackageName' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::LaunchConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::LaunchConfig object:

  $service_obj->Method(Att1 => { EnvironmentVariables => $value, ..., PackageName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::LaunchConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->EnvironmentVariables

=head1 DESCRIPTION

Information about a launch configuration.

=head1 ATTRIBUTES


=head2 EnvironmentVariables => Robomaker_EnvironmentVariableMap

  The environment variables for the application launch.


=head2 B<REQUIRED> LaunchFile => Str

  The launch file name.


=head2 B<REQUIRED> PackageName => Str

  The package name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

